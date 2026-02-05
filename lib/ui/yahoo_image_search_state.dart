import 'package:freezed_annotation/freezed_annotation.dart';
import '../../model/image_result.dart';

part 'yahoo_image_search_state.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
// Union形式（Sealed Class）

@freezed
class YahooImageSearchState with _$YahooImageSearchState {
  const factory YahooImageSearchState({
    @Default(ScreenState.initial('')) ScreenState screen,
    @Default(DialogState.idle()) DialogState dialog,
  }) = _YahooImageSearchState;
}

@freezed
sealed class ScreenState with _$ScreenState {
  const factory ScreenState.initial(String word) = ScreenInitial;

  const factory ScreenState.loading(String word) = ScreenLoading;

  const factory ScreenState.success({
    required List<ImageResult> results,
    required String word,
  }) = ScreenSuccess;

  const factory ScreenState.error({
    required String message,
    required String word,
  }) = ScreenError;
}

@freezed
sealed class DialogState with _$DialogState {
  const factory DialogState.idle() = DialogIdle;

  const factory DialogState.loading() = DialogLoading;

  const factory DialogState.success(String message) = DialogSuccess;

  const factory DialogState.error(String message) = DialogError;
}
/*
@freezed
class YahooImageSearchState with _$YahooImageSearchState {
  const factory YahooImageSearchState({
    // 画面全体のメイン状態（Idle, Loading, Success, Error）
    @Default(ScreenIdle()) ScreenState screen,

    // ダイアログ専用の状態（Idle, Loading, Success, Error）
    @Default(DialogIdle()) DialogState dialog,

    // 共通データ（検索ワードなど）
    required SearchContext context,
  }) = _YahooImageSearchState;
}
 */
