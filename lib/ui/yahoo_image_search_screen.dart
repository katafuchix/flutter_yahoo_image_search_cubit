import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import '../repository/image_repository_impl.dart';
import '../service/gallery_service.dart';
import 'components/photo_browser.dart';
import 'yahoo_image_search_cubit.dart';
import 'yahoo_image_search_state.dart';

class YahooImageSearchScreen extends StatelessWidget {
  const YahooImageSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // BlocProvider で Cubit を生成・注入
    return BlocProvider(
      create: (_) =>
          YahooImageSearchCubit(ImageRepositoryImpl(Dio()), GalleryService()),
      child: const _YahooImageSearchScreen(),
    );
  }
}

class _YahooImageSearchScreen extends StatelessWidget {
  const _YahooImageSearchScreen();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        // 2. タップでフォーカスを外す（キーボードが下がる）
        child: Scaffold(
          appBar: AppBar(title: const Text('Yahoo Image Search')),
          // BlocConsumer で状態の監視とダイアログの制御を両立
          body: BlocConsumer<YahooImageSearchCubit, YahooImageSearchState>(
            listener: (context, state) {
              // --- 1. ローディング制御 (Screen または Dialog のいずれかが Loading なら表示) ---
              final isScreenLoading = state.screen is ScreenLoading;
              final isDialogLoading = state.dialog is DialogLoading;

              if (isScreenLoading || isDialogLoading) {
                SmartDialog.showLoading(
                    msg: isDialogLoading ? '保存中...' : '検索中...');
              } else {
                SmartDialog.dismiss();
              }

              // --- 2. 検索エラーの処理 (ScreenState の Error を監視) ---
              // listenWhen で「screen の状態が変わった時だけ」に絞るとより効率的です
              state.screen.maybeWhen(
                error: (message, _) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('検索エラー: $message'),
                      backgroundColor: Colors.redAccent,
                      behavior: SnackBarBehavior.floating,
                      action: SnackBarAction(
                        label: '閉じる',
                        textColor: Colors.white,
                        onPressed: () =>
                            ScaffoldMessenger.of(context).hideCurrentSnackBar(),
                      ),
                    ),
                  );
                },
                orElse: () {},
              );

              // --- 3. 保存結果の処理 (DialogState の Success/Error を監視) ---
              state.dialog.maybeWhen(
                success: (msg) => SmartDialog.showToast(msg),
                error: (msg) => SmartDialog.showToast('保存失敗: $msg'),
                orElse: () {},
              );
            },
            builder: (context, state) {
              final cubit = context.read<YahooImageSearchCubit>();

              // state.screen から現在のワードを取得
              //final currentWord = state.screen.word;

              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (value) => cubit.setSearchWord(value),
                          decoration: const InputDecoration(
                            labelText: '検索キーワード',
                            border: OutlineInputBorder(),
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 12.0),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          // cubitの判定ロジックと、現在の画面がロード中（ScreenLoading）でないかをチェック
                          onPressed: cubit.isSearchButtonEnabled &&
                                  state.screen is! ScreenLoading
                              ? () {
                                  FocusScope.of(context).unfocus();
                                  cubit.search();
                                }
                              : null,
                          child: state.screen.maybeWhen(
                            loading: (_) => const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                            orElse: () => const Text('検索'),
                          ),
                        ),
                        state.screen.maybeWhen(
                          error: (message, _) => Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'エラー: $message',
                              style: const TextStyle(color: Colors.red),
                            ),
                          ),
                          // error 以外の状態（initial, loading, success）では何も表示しない
                          orElse: () => const SizedBox.shrink(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: state.screen.when(
                        // 1. 初期状態：何も表示しない、またはメッセージ
                        initial: (_) =>
                            const Center(child: Text('キーワードを入力してください')),

                        // 2. ロード中：前回までの結果を表示し続けるか、空にするか選べますが、
                        // ここでは Union形式らしく「何も表示しない（SmartDialogに任せる）」形にします
                        loading: (_) => const SizedBox.shrink(),

                        // 3. エラー時：エラーメッセージを表示
                        error: (message, _) => Center(
                          child: Text(message,
                              style: const TextStyle(color: Colors.red)),
                        ),

                        // 4. 成功時：ここで初めて results にアクセスできる
                        success: (results, searchWord) => GridView.builder(
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0,
                            childAspectRatio: 1.0,
                          ),
                          itemCount: results.length,
                          itemBuilder: (context, index) {
                            final imageUrl = results[index].url;
                            return GestureDetector(
                              onTap: () => _showPhotoBrowser(
                                context,
                                results.map((e) => e.url).toList(),
                                index,
                              ),
                              // 長押しで保存機能を呼び出す例
                              onLongPress: () => cubit.downloadImage(imageUrl),
                              child: Image.network(imageUrl, fit: BoxFit.cover),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ));
  }

  void _showPhotoBrowser(
    BuildContext context,
    List<String> photos,
    int initialIndex,
  ) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "閉じる",
      barrierColor: Colors.black87,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, _, __) => PhotoBrowser(
        photos: photos,
        initialIndex: initialIndex,
      ),
    );
  }
}
