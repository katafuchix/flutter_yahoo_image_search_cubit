import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import '../../../repository/image_repository.dart';
import '../../../repository/favorite_repository.dart';
import 'yahoo_image_search_state.dart';
import '../../../service/gallery_service.dart';

@injectable
class YahooImageSearchCubit extends Cubit<YahooImageSearchState> {
  final ImageRepository _repository;
  final GalleryService _galleryService;
  final FavoriteRepository _favoriteRepository;
  final http.Client _httpClient;

  // 初期状態をセットして起動
  YahooImageSearchCubit(
    this._repository,
    this._galleryService,
    this._favoriteRepository,
    this._httpClient, // 必須にする
  ) : super(
        const YahooImageSearchState(
          // 初期状態：Screenはinitial、Dialogはidle
          screen: ScreenState.initial(''),
          dialog: DialogState.idle(),
        ),
      );

  // ボタンの判定もStateから取れる
  bool get isSearchButtonEnabled => state.screen.word.length >= 3;

  void setSearchWord(String word) {
    // 現在の screen 状態を維持したまま word だけ更新
    // state.screen.copyWith(word: word) が使えるよう定義されている想定
    emit(state.copyWith(screen: state.screen.copyWith(word: word)));
  }

  // 検索実行
  Future<void> search() async {
    if (!isSearchButtonEnabled) return;

    final currentWord = state.screen.word;

    // Loading状態へ（検索ワードを引き継ぐ）
    // 画面（screen）だけをロード中に変更
    emit(
      state.copyWith(currentPage: 1, screen: ScreenState.loading(currentWord)),
    );

    try {
      final results = await _repository.fetchImages(searchWord: currentWord);

      if (results.isEmpty) {
        emit(
          state.copyWith(
            screen: ScreenState.error(message: '結果なし', word: currentWord),
          ),
        );
      } else {
        emit(
          state.copyWith(
            screen: ScreenState.success(
              results: results,
              word: currentWord,
              hasNext: results.isNotEmpty,
            ),
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          screen: ScreenState.error(message: e.toString(), word: currentWord),
        ),
      );
    }
  }

  // 追加：次ページ読み込み
  Future<void> loadNextPage() async {
    // すでに読み込み中、または成功状態以外なら無視
    final currentScreen = state.screen;
    if (currentScreen is! ScreenSuccess || !currentScreen.hasNext) return;

    final previousResults = currentScreen.results;
    final _currentWord = currentScreen.word;

    // 状態を「次ページ読み込み中」に変更（今あるリストを保持したまま）
    emit(
      state.copyWith(
        screen: ScreenState.loadingMore(
          results: previousResults,
          word: _currentWord,
        ),
      ),
    );

    try {
      final nextPage = state.currentPage + 1; // 状態から計算
      final newResults = await _repository.fetchImages(
        searchWord: _currentWord,
        page: nextPage,
      );

      emit(
        state.copyWith(
          currentPage: nextPage, // 成功したらページを更新
          screen: ScreenState.success(
            results: [
              ...previousResults,
              ...newResults,
            ], // Swiftの array + array
            word: _currentWord,
            hasNext: newResults.isNotEmpty, // 取得件数が空なら次はなし
          ),
        ),
      );
    } catch (e) {
      // エラーでも前のリストは消さずにSuccessに戻す（またはエラー通知）
      emit(
        state.copyWith(
          screen: ScreenState.success(
            results: previousResults,
            word: _currentWord,
          ),
        ),
      );
    }
  }

  // 画像保存処理
  Future<void> downloadImage(String url) async {
    // 1. ダイアログの状態をロード中に（画面のリストは維持）
    emit(state.copyWith(dialog: const DialogState.loading()));

    try {
      // 2. 画像データの取得
      final response = await _httpClient.get(Uri.parse(url));
      if (response.statusCode != 200) throw Exception('画像の取得に失敗しました');

      // 3. ギャラリー保存処理（実際にはライブラリを呼ぶ）
      // ★ 直接ライブラリを呼ばず、注入されたサービスを使う
      await _galleryService.save(response.bodyBytes);
      //await Future.delayed(const Duration(seconds: 1)); // 演出用のウェイト

      // 4. 成功状態へ
      emit(state.copyWith(dialog: const DialogState.success('ギャラリーに保存しました！')));

      // 5. 完了したので Idle に戻す（これでトーストが消える導線になる）
      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(dialog: const DialogState.idle()));
    } catch (e) {
      // 6. エラー発生
      emit(state.copyWith(dialog: DialogState.error(e.toString())));

      // エラー表示後も Idle に戻しておかないと、次の操作で不具合が出るためリセット
      await Future.delayed(const Duration(seconds: 2));
      emit(state.copyWith(dialog: const DialogState.idle()));
    }
  }

  // お気に入り操作（リポジトリを叩くだけ。状態の更新は FavoriteCubit が担当する）
  Future<void> toggleFavorite(String url) async {
    try {
      await _favoriteRepository.toggleFavorite(url);
      // ここで自分の state を emit する必要はありません。
      // FavoriteCubit が Repository の変更を検知、または UI が通知を受けて再描画されます。
    } catch (e) {
      emit(state.copyWith(dialog: const DialogState.error('お気に入り操作に失敗しました')));
    }
  }

  // ダイアログ状態のリセット
  void resetDialog() {
    emit(state.copyWith(dialog: const DialogState.idle()));
  }
}
