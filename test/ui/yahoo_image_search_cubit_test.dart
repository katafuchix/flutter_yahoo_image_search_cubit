import 'dart:typed_data';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_yahoo_image_search_cubit/repository/favorite_repository.dart';
import 'package:flutter_yahoo_image_search_cubit/service/gallery_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_yahoo_image_search_cubit/model/image_result.dart';
import 'package:flutter_yahoo_image_search_cubit/repository/image_repository.dart';
import 'package:flutter_yahoo_image_search_cubit/ui/yahoo_image_search_cubit.dart';
import 'package:flutter_yahoo_image_search_cubit/ui/yahoo_image_search_state.dart';

// flutter test test/ui/yahoo_image_search_cubit_test.dart

class MockClient extends Mock implements http.Client {}

// リポジトリのモックを作成
class MockImageRepository extends Mock implements ImageRepository {}

class MockGalleryService extends Mock implements GalleryService {}

class MockFavoriteRepository extends Mock implements FavoriteRepository {}

void main() {
  // 儀式：Fallbackの登録
  setUpAll(() {
    registerFallbackValue(Uri());
    registerFallbackValue(Uint8List(0));
  });

  late YahooImageSearchCubit cubit;
  late MockImageRepository mockRepository;
  late MockClient mockClient;
  late MockGalleryService mockGallery;
  late MockFavoriteRepository mockFavoriteRepository;

  setUp(() {
    mockRepository = MockImageRepository();
    mockGallery = MockGalleryService();
    mockClient = MockClient();
    mockFavoriteRepository = MockFavoriteRepository();

    // CubitにHttpClientを注入できるように改造している前提
    cubit = YahooImageSearchCubit(
        mockRepository,
        mockGallery,
        httpClient: mockClient,
        mockFavoriteRepository);
  });

  // これを追加！
  TestWidgetsFlutterBinding.ensureInitialized();

  // これを追加！
  setUpAll(() {
    registerFallbackValue(Uri());
  });

  tearDown(() {
    cubit.close();
  });

  group('YahooImageSearchCubit', () {
    test('初期状態が正しいこと', () {
      expect(
          cubit.state,
          const YahooImageSearchState(
            // 初期状態：Screenはinitial、Dialogはidle
            screen: ScreenState.initial(''),
            dialog: DialogState.idle(),
          ));
    });

    blocTest<YahooImageSearchCubit, YahooImageSearchState>(
      'setSearchWordを呼んだとき、searchWordのみが更新されること',
      build: () => cubit,
      act: (cubit) => cubit.setSearchWord('ねこ'),
      expect: () => [
        const YahooImageSearchState(
            screen: ScreenState.initial('ねこ'), dialog: DialogState.idle()),
      ],
    );

    blocTest<YahooImageSearchCubit, YahooImageSearchState>(
      '検索成功時：Loading状態を経て、結果が格納されること',
      build: () {
        // リポジトリが結果を返すように設定
        when(() => mockRepository.fetchImages('Flutter')).thenAnswer(
            (_) async => [ImageResult(url: 'https://test.com/1.jpg')]);
        return cubit;
      },
      act: (cubit) async {
        cubit.setSearchWord('Flutter');
        await cubit.search();
      },
      // 状態の遷移を順番に検証
      expect: () => [
        const YahooImageSearchState(
            screen: ScreenState.initial('Flutter'), dialog: DialogState.idle()),
        // 文字入力
        const YahooImageSearchState(
            screen: ScreenState.loading('Flutter'), dialog: DialogState.idle()),
        //const YahooImageSearchState.loading(SearchContext(word: 'Flutter')),
        // 検索開始（Loadingに遷移）
        YahooImageSearchState(
            screen: ScreenState.success(
              results: [ImageResult(url: 'https://test.com/1.jpg')],
              word: 'Flutter',
            ),
            dialog: const DialogState.idle()),
        // 成功
      ],
    );

    blocTest<YahooImageSearchCubit, YahooImageSearchState>(
      '検索失敗時：Loading状態を経て、エラーメッセージが格納されること',
      build: () {
        when(() => mockRepository.fetchImages('ErrorWord'))
            .thenThrow(Exception('Network Error'));
        return cubit;
      },
      act: (cubit) async {
        cubit.setSearchWord('ErrorWord');
        await cubit.search();
      },
      expect: () => [
        const YahooImageSearchState(
            screen: ScreenState.initial('ErrorWord'),
            dialog: DialogState.idle()),
        const YahooImageSearchState(
            screen: ScreenState.loading('ErrorWord'),
            dialog: DialogState.idle()),
        const YahooImageSearchState(
            screen: ScreenError(
                message: 'Exception: Network Error', word: 'ErrorWord'),
            dialog: DialogState.idle())
      ],
    );

    blocTest<YahooImageSearchCubit, YahooImageSearchState>(
      '検索ワードが3文字未満の場合、検索を実行しないこと',
      build: () => cubit,
      act: (cubit) async {
        cubit.setSearchWord('ab');
        await cubit.search();
      },
      expect: () => [
        const YahooImageSearchState(
            screen: ScreenState.initial('ab'), dialog: DialogState.idle())
        // searchを呼んでも Loading 状態は emit されない
      ],
      verify: (_) {
        // リポジトリが呼ばれていないことを確認
        verifyNever(() => mockRepository.fetchImages(any()));
      },
    );
  });

  blocTest<YahooImageSearchCubit, YahooImageSearchState>(
    '画像ダウンロード成功時：DialogStateが loading -> success -> idle と遷移すること',
    build: () {
      // http.get の挙動をモック
      when(() => mockClient.get(any())).thenAnswer(
        (_) async => http.Response('fake_bytes', 200),
      );
      // 保存処理のモック（なにもせず成功させる）
      when(() => mockGallery.save(any())).thenAnswer((_) async => {});
      return cubit;
    },
    // 初期状態で既に検索成功して画像がある状態をシミュレート
    seed: () => const YahooImageSearchState(
      screen: ScreenState.success(results: [], word: 'Flutter'),
      dialog: DialogState.idle(),
    ),
    act: (cubit) => cubit.downloadImage('https://test.com/image.jpg'),
    expect: () => [
      // 1. ダイアログだけ Loading になる（screenの状態は引き継がれる）
      isA<YahooImageSearchState>()
          .having((s) => s.dialog, 'dialog', const DialogState.loading()),
      // 2. 成功状態になる
      isA<YahooImageSearchState>().having((s) => s.dialog, 'dialog',
          const DialogState.success('ギャラリーに保存しました！')),
      // 3. 最後に Idle に戻る
      isA<YahooImageSearchState>()
          .having((s) => s.dialog, 'dialog', const DialogState.idle()),
    ],
  );

  blocTest<YahooImageSearchCubit, YahooImageSearchState>(
    '画像ダウンロード失敗時：DialogStateが loading -> error -> idle と遷移すること',
    build: () {
      when(() => mockClient.get(any())).thenAnswer(
        (_) async => http.Response('Not Found', 404),
      );
      return cubit;
    },
    act: (cubit) => cubit.downloadImage('https://test.com/404.jpg'),
    expect: () => [
      isA<YahooImageSearchState>()
          .having((s) => s.dialog, 'dialog', const DialogState.loading()),
      isA<YahooImageSearchState>()
          .having((s) => s.dialog, 'dialog', isA<DialogError>()),
      isA<YahooImageSearchState>()
          .having((s) => s.dialog, 'dialog', const DialogState.idle()),
    ],
  );

  blocTest<YahooImageSearchCubit, YahooImageSearchState>(
    'お気に入り追加時に state.favoriteUrls が更新されること',
    build: () {
      // toggle後に取得されるリストをシミュレート
      when(() => mockFavoriteRepository.toggleFavorite(any()))
          .thenAnswer((_) async => {});
      when(() => mockFavoriteRepository.getFavorites())
          .thenAnswer((_) async => ['https://test.com/1.jpg']);
      return cubit;
    },
    act: (cubit) => cubit.toggleFavorite('https://test.com/1.jpg'),
    expect: () => [
      isA<YahooImageSearchState>().having(
          (s) => s.favoriteUrls, 'URLが追加されている', ['https://test.com/1.jpg']),
    ],
  );
  /*
  blocTest<YahooImageSearchCubit, YahooImageSearchState>(
    '検索成功時に isLoading が true -> false と遷移し、結果が格納されること',
    build: () => YahooImageSearchCubit(mockRepository),
    act: (cubit) {
      cubit.setSearchWord('Flutter');
      return cubit.search();
    },
    expect: () => [
      isA<YahooImageSearchState>().having((s) => s.searchWord, 'word', 'Flutter'), // Wordセット
      isA<YahooImageSearchState>().having((s) => s.isLoading, 'loading', true),   // 検索開始
      isA<YahooImageSearchState>().having((s) => s.results, 'results', isNotEmpty) // 完了
          .having((s) => s.isLoading, 'loading', false),
    ],
  );*/
}
