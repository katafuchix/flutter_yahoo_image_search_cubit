import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repository/image_repository.dart';
import 'yahoo_image_search_state.dart';

class YahooImageSearchCubit extends Cubit<YahooImageSearchState> {
  final ImageRepository _repository;

  // 初期状態をセットして起動
  YahooImageSearchCubit(this._repository)
      : super(const YahooImageSearchState.initial(SearchContext(word: '')));

  // ボタンの判定もStateから取れる
  bool get isSearchButtonEnabled => state.context.word.length >= 3;

  void setSearchWord(String word) {
    // context の中身だけ copyWith で書き換えて emit
    final newContext = state.context.copyWith(word: word);
    emit(state.copyWith(context: newContext));
  }

  // 検索実行
  Future<void> search() async {
    if (!isSearchButtonEnabled) return;

    final currentContext = state.context;

    // Loading状態へ（検索ワードを引き継ぐ）
    emit(YahooImageSearchState.loading(currentContext));

    try {
      final results = await _repository.fetchImages(currentContext.word);

      if (results.isEmpty) {
        emit(YahooImageSearchState.error(
          message: '検索結果が見つかりませんでした',
          context: currentContext,
        ));
      } else {
        emit(YahooImageSearchState.success(
          results: results,
          context: currentContext,
        ));
      }
    } catch (e) {
      emit(YahooImageSearchState.error(
        context: currentContext,
        message: e.toString(),
      ));
    }
  }
}
