import 'package:freezed_annotation/freezed_annotation.dart';
import '../../model/image_result.dart';

part 'yahoo_image_search_state.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

@freezed
class YahooImageSearchState with _$YahooImageSearchState {
  const factory YahooImageSearchState({
    @Default('') String searchWord,
    @Default([]) List<ImageResult> results,
    @Default(false) bool isLoading,
    String? error,
  }) = _YahooImageSearchState;

  // カスタムメソッド・ゲッターを追加するために必要
  const YahooImageSearchState._();

  // バリデーション。UI側で viewModel.isSearchButtonEnabled と呼ぶのと同じ感覚で使えます
  bool get isSearchButtonEnabled => searchWord.length >= 3;
}