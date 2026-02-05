import 'package:freezed_annotation/freezed_annotation.dart';
import '../../model/image_result.dart';

part 'yahoo_image_search_state.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

// 共通で持ち回るデータだけをまとめたクラス
@freezed
class SearchContext with _$SearchContext {
  const factory SearchContext({
    required String word,
    @Default(false) bool isSafeSearch,
  }) = _SearchContext;
}

// Union形式（Sealed Class）
@freezed
class YahooImageSearchState with _$YahooImageSearchState {
  // すべての factory が SearchContext を一つだけ持つ
  // 初期状態
  const factory YahooImageSearchState.initial(SearchContext context) =
      YahooImageSearchInitial;

  // 読み込み中
  const factory YahooImageSearchState.loading(SearchContext context) =
      YahooImageSearchLoading;

  // 成功（結果データを持つ）
  const factory YahooImageSearchState.success({
    required SearchContext context,
    required List<ImageResult> results,
  }) = YahooImageSearchSuccess;

  // 失敗（エラーメッセージを持つ）
  const factory YahooImageSearchState.error({
    required SearchContext context,
    required String message,
  }) = YahooImageSearchError;
}
