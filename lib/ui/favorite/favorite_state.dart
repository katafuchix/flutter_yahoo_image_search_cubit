import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

@freezed
sealed class FavoriteState with _$FavoriteState {
  // 初期状態
  const factory FavoriteState.initial() = FavoriteInitial;

  // 読み込み中
  const factory FavoriteState.loading() = FavoriteLoading;

  // 成功（データあり）
  const factory FavoriteState.success({
    required List<String> favoriteUrls,
  }) = FavoriteSuccess;

  // 失敗
  const factory FavoriteState.error(String message) = FavoriteError;
}
