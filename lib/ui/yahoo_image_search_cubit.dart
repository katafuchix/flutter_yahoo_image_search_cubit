import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repository/image_repository.dart';
import 'yahoo_image_search_state.dart';

class YahooImageSearchCubit extends Cubit<YahooImageSearchState> {
  final ImageRepository _repository;

  // 初期状態をセットして起動
  YahooImageSearchCubit(this._repository) : super(const YahooImageSearchState());

  // 検索ワードの更新
  void setSearchWord(String word) {
    emit(state.copyWith(searchWord: word));
  }

  // 検索実行
  Future<void> search() async {
    if (!state.isSearchButtonEnabled) return;

    emit(state.copyWith(isLoading: true, error: null));

    try {
      final results = await _repository.fetchImages(state.searchWord);
      emit(state.copyWith(results: results, isLoading: false));
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isLoading: false));
    }
  }
}