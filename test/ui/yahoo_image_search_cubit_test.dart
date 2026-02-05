import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_yahoo_image_search_cubit/model/image_result.dart';
import 'package:flutter_yahoo_image_search_cubit/repository/image_repository.dart';
import 'package:flutter_yahoo_image_search_cubit/ui/yahoo_image_search_cubit.dart';
import 'package:flutter_yahoo_image_search_cubit/ui/yahoo_image_search_state.dart';

// flutter test test/ui/yahoo_image_search_cubit_test.dart

// リポジトリのモックを作成
class MockImageRepository extends Mock implements ImageRepository {}

void main() {
  late YahooImageSearchCubit cubit;
  late MockImageRepository mockRepository;

  setUp(() {
    mockRepository = MockImageRepository();
    cubit = YahooImageSearchCubit(mockRepository);
  });

  tearDown(() {
    cubit.close();
  });

  group('YahooImageSearchCubit', () {
    test('初期状態が正しいこと', () {
      expect(cubit.state,
          const YahooImageSearchState.initial(SearchContext(word: '')));
    });

    blocTest<YahooImageSearchCubit, YahooImageSearchState>(
      'setSearchWordを呼んだとき、searchWordのみが更新されること',
      build: () => cubit,
      act: (cubit) => cubit.setSearchWord('ねこ'),
      expect: () => [
        const YahooImageSearchState.initial(SearchContext(word: 'ねこ')),
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
        const YahooImageSearchState.initial(SearchContext(word: 'Flutter')),
        // 文字入力
        const YahooImageSearchState.loading(SearchContext(word: 'Flutter')),
        // 検索開始（Loadingに遷移）
        YahooImageSearchState.success(
          results: [ImageResult(url: 'https://test.com/1.jpg')],
          context: const SearchContext(word: 'Flutter'),
        ),
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
        const YahooImageSearchState.initial(SearchContext(word: 'ErrorWord')),
        const YahooImageSearchState.loading(SearchContext(word: 'ErrorWord')),
        const YahooImageSearchState.error(
          message: 'Exception: Network Error',
          context: SearchContext(word: 'ErrorWord'),
        ),
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
        const YahooImageSearchState.initial(SearchContext(word: 'ab')),
        // searchを呼んでも Loading 状態は emit されない
      ],
      verify: (_) {
        // リポジトリが呼ばれていないことを確認
        verifyNever(() => mockRepository.fetchImages(any()));
      },
    );
  });

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
