import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'dart:typed_data';
import '../../repository/image_repository.dart';
import 'yahoo_image_search_state.dart';
import '../../service/gallery_service.dart';

class YahooImageSearchCubit extends Cubit<YahooImageSearchState> {
  final ImageRepository _repository;
  final GalleryService _galleryService;
  final http.Client _httpClient;

  // 初期状態をセットして起動
  YahooImageSearchCubit(
    this._repository,
    this._galleryService, {
    http.Client? httpClient,
  } // テスト用に任意で受け取れるようにする
      )  : _httpClient = httpClient ?? http.Client(),
        super(const YahooImageSearchState(
          // 初期状態：Screenはinitial、Dialogはidle
          screen: ScreenState.initial(''),
          dialog: DialogState.idle(),
        ));

  // ボタンの判定もStateから取れる
  bool get isSearchButtonEnabled => state.screen.word.length >= 3;

  void setSearchWord(String word) {
    // 現在の screen 状態を維持したまま word だけ更新
    // state.screen.copyWith(word: word) が使えるよう定義されている想定
    emit(state.copyWith(
      screen: state.screen.copyWith(word: word),
    ));
  }

  // 検索実行
  Future<void> search() async {
    if (!isSearchButtonEnabled) return;

    final currentWord = state.screen.word;

    // Loading状態へ（検索ワードを引き継ぐ）
    // 画面（screen）だけをロード中に変更
    emit(state.copyWith(screen: ScreenState.loading(currentWord)));

    try {
      final results = await _repository.fetchImages(currentWord);

      if (results.isEmpty) {
        emit(state.copyWith(
          screen: ScreenState.error(message: '結果なし', word: currentWord),
        ));
      } else {
        emit(state.copyWith(
          screen: ScreenState.success(results: results, word: currentWord),
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        screen: ScreenState.error(message: e.toString(), word: currentWord),
      ));
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

      final Uint8List bytes = response.bodyBytes;

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
}
