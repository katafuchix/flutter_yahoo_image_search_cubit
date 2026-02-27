import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../repository/favorite_repository.dart';
import 'favorite_state.dart';

@injectable
class FavoriteCubit extends Cubit<FavoriteState> {
  final FavoriteRepository _favoriteRepository;

  FavoriteCubit(this._favoriteRepository)
    : super(const FavoriteState.initial());

  Future<void> load() async {
    emit(const FavoriteState.loading());
    try {
      final urls = await _favoriteRepository.getFavorites();
      emit(FavoriteState.success(favoriteUrls: urls));
    } catch (e) {
      emit(const FavoriteState.error('お気に入りの取得に失敗しました'));
    }
  }

  Future<void> removeFavorite(String url) async {
    try {
      await _favoriteRepository.toggleFavorite(url);
      // 削除が成功したら再ロード
      await load();
    } catch (e) {
      // 削除失敗時のハンドリング（現在の状態を維持しつつエラーを出す場合は、
      // 検索画面のように DialogState を導入するのもアリですが、
      // ここではシンプルに error ステートへ遷移させます）
      emit(const FavoriteState.error('削除に失敗しました'));
    }
  }

  // お気に入り追加・削除
  Future<void> toggleFavorite(String url) async {
    try {
      await _favoriteRepository.toggleFavorite(url);
      // Repositoryを更新したら、自分自身をリロードしてStateを最新にする
      await load();
    } catch (e) {
      emit(const FavoriteState.error('操作に失敗しました'));
    }
  }
}
