import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../model/image_result.dart';

part 'yahoo_image_search_state.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
// fvm dart run build_runner build --delete-conflicting-outputs

// Union形式（Sealed Class）

@freezed
class YahooImageSearchState with _$YahooImageSearchState {
  const factory YahooImageSearchState({
    @Default(ScreenState.initial('')) ScreenState screen,
    @Default(DialogState.idle()) DialogState dialog,
    @Default([]) List<String> favoriteUrls,
    @Default(1) int currentPage,
  }) = _YahooImageSearchState;

  @override
  // TODO: implement currentPage
  int get currentPage => throw UnimplementedError();

  @override
  // TODO: implement dialog
  DialogState get dialog => throw UnimplementedError();

  @override
  // TODO: implement favoriteUrls
  List<String> get favoriteUrls => throw UnimplementedError();

  @override
  // TODO: implement screen
  ScreenState get screen => throw UnimplementedError();
}

@freezed
sealed class ScreenState with _$ScreenState {
  const factory ScreenState.initial(String word) = ScreenInitial;

  const factory ScreenState.loading(String word) = ScreenLoading;

  // 【重要】現在の結果を表示しつつ、下でクルクル回すための状態
  const factory ScreenState.loadingMore({
    required List<ImageResult> results,
    required String word,
  }) = ScreenLoadingMore;

  const factory ScreenState.success({
    required List<ImageResult> results,
    required String word,
    @Default(true) bool hasNext, // 次のページがあるか
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
