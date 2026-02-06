import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_yahoo_image_search_cubit/repository/favorite_repository.dart';
import 'package:flutter_yahoo_image_search_cubit/ui/favorite/favorite_state.dart';
import 'package:flutter_yahoo_image_search_cubit/ui/favorite/favorite_cubit.dart';

class MockFavoriteRepository extends Mock implements FavoriteRepository {}

void main() {
  late FavoriteCubit cubit;
  late MockFavoriteRepository mockRepo;

  setUp(() {
    mockRepo = MockFavoriteRepository();
    cubit = FavoriteCubit(mockRepo);
  });

  blocTest<FavoriteCubit, FavoriteState>(
    '正常系：ロード成功時にFavoriteSuccessが発行されること',
    build: () {
      when(() => mockRepo.getFavorites()).thenAnswer((_) async => ['url1']);
      return cubit;
    },
    act: (cubit) => cubit.load(),
    expect: () => [
      const FavoriteState.loading(),
      const FavoriteState.success(favoriteUrls: ['url1']),
    ],
  );
  // --- 既存のロードテスト ---
  blocTest<FavoriteCubit, FavoriteState>(
    '正常系：ロード成功時にFavoriteSuccessが発行されること',
    build: () {
      when(() => mockRepo.getFavorites()).thenAnswer((_) async => ['url1']);
      return cubit;
    },
    act: (cubit) => cubit.load(),
    expect: () => [
      const FavoriteState.loading(),
      const FavoriteState.success(favoriteUrls: ['url1']),
    ],
  );

  // --- 追加：トグル（追加/削除）のテスト ---
  blocTest<FavoriteCubit, FavoriteState>(
    '正常系：お気に入りをトグルした際、Repositoryが呼ばれ、最新のリストで更新されること',
    build: () {
      // 1. toggleFavoriteが呼ばれたら正常終了させる
      when(() => mockRepo.toggleFavorite(any())).thenAnswer((_) async => {});
      // 2. その後の再ロード(load())で返ってくる新しいリストを設定
      when(() => mockRepo.getFavorites())
          .thenAnswer((_) async => ['url1', 'url2']);
      return cubit;
    },
    act: (cubit) => cubit.toggleFavorite('url2'),
    expect: () => [
      // toggleFavorite内部でload()が呼ばれるため、以下の流れになる
      const FavoriteState.loading(),
      const FavoriteState.success(favoriteUrls: ['url1', 'url2']),
    ],
    verify: (_) {
      // 実際にRepositoryのメソッドが指定したURLで呼ばれたかチェック
      verify(() => mockRepo.toggleFavorite('url2')).called(1);
    },
  );

  // --- 追加：エラー系のテスト ---
  blocTest<FavoriteCubit, FavoriteState>(
    '異常系：トグル失敗時にエラー状態が発行されること',
    build: () {
      when(() => mockRepo.toggleFavorite(any())).thenThrow(Exception('保存失敗'));
      return cubit;
    },
    act: (cubit) => cubit.toggleFavorite('url2'),
    expect: () => [
      const FavoriteState.error('操作に失敗しました'),
    ],
  );
}
