import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import '../../model/image_result.dart';
import '../components/photo_browser.dart';
import '../favorite/favorite_cubit.dart';
import 'yahoo_image_search_cubit.dart';
import 'yahoo_image_search_state.dart';

class YahooImageSearchScreen extends StatefulWidget {
  const YahooImageSearchScreen({super.key});

  @override
  State<YahooImageSearchScreen> createState() => _YahooImageSearchScreenState();
}

class _YahooImageSearchScreenState extends State<YahooImageSearchScreen> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.canRequestFocus = false;
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 1. 通知（Dialog/SnackBar）のみを監視する Listener
    return BlocListener<YahooImageSearchCubit, YahooImageSearchState>(
      listenWhen: (previous, current) =>
          previous.screen != current.screen ||
          previous.dialog != current.dialog,
      listener: (context, state) {
        // --- ローディング制御 ---
        final isScreenLoading = state.screen is ScreenLoading;
        final isDialogLoading = state.dialog is DialogLoading;

        if (isScreenLoading || isDialogLoading) {
          SmartDialog.showLoading(msg: isDialogLoading ? '保存中...' : '検索中...');
        } else {
          SmartDialog.dismiss();
        }

        // --- 検索エラー処理 ---
        state.screen.maybeWhen(
          error: (message, _) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text('検索エラー: $message'),
                  backgroundColor: Colors.redAccent),
            );
          },
          orElse: () {},
        );

        // --- 保存結果処理 ---
        state.dialog.maybeWhen(
          success: (msg) => SmartDialog.showToast(msg),
          error: (msg) => SmartDialog.showToast('保存失敗: $msg'),
          orElse: () {},
        );
      },
      // 2. 描画（UI作成）を担当する領域
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Yahoo Image Search'),
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                context.push('/favorites');
              },
            ),
          ],
        ),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => FocusScope.of(context).unfocus(),
          child: Builder(
            builder: (context) {
              // 【重要】ここで2つの Cubit を同時に「購読」します
              final searchState = context.watch<YahooImageSearchCubit>().state;

              final cubit = context.read<YahooImageSearchCubit>();

              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextField(
                          focusNode: _focusNode,
                          onTap: () {
                            setState(() => _focusNode.canRequestFocus = true);
                            _focusNode.requestFocus();
                          },
                          onTapOutside: (_) {
                            _focusNode.unfocus();
                            setState(() => _focusNode.canRequestFocus = false);
                          },
                          onChanged: (value) => cubit.setSearchWord(value),
                          decoration: const InputDecoration(
                            labelText: '検索キーワード',
                            border: OutlineInputBorder(),
                            isDense: true,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: cubit.isSearchButtonEnabled &&
                                  searchState.screen is! ScreenLoading
                              ? () {
                                  FocusScope.of(context).unfocus();
                                  cubit.search();
                                }
                              : null,
                          child: searchState.screen.maybeWhen(
                            loading: (_) => const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                            orElse: () => const Text('検索'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: searchState.screen.when(
                      initial: (_) =>
                          const Center(child: Text('キーワードを入力してください')),
                      loading: (_) => const SizedBox.shrink(),
                      // Listener が Loading を出すので空でOK
                      error: (message, _) => Center(
                        child: Text(message,
                            style: const TextStyle(color: Colors.red)),
                      ),
                      // 【ここがポイント】success と loading_more で同じ GridView を呼び出す
                      success: (results, word, hasNext) =>
                          _buildGridView(context, results, false),
                      loadingMore: (results, word) =>
                          _buildGridView(context, results, true),
                    ),
                  ))
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildGridView(
      BuildContext context, List<ImageResult> results, bool isLoadingMore) {
    final cubit = context.read<YahooImageSearchCubit>();
    // FavoriteCubit の success 状態にあるリストだけを監視
    final favoriteUrls = context.select<FavoriteCubit, List<String>>(
      (favCubit) => favCubit.state.maybeWhen(
        success: (urls) => urls,
        orElse: () => [],
      ),
    );
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        // スクロールが一番下（の90%くらい）に来たら次を読み込む
        if (scrollInfo.metrics.pixels >=
            scrollInfo.metrics.maxScrollExtent * 0.9) {
          context.read<YahooImageSearchCubit>().loadNextPage();
        }
        return true;
      },
      child: GridView.builder(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: results.length,
        itemBuilder: (context, index) {
          if (index < results.length) {
            // 通常の画像表示
            final imageUrl = results[index].url;
            // FavoriteCubit から取得したリストで判定
            final isFavorite = favoriteUrls.contains(imageUrl);

            return GestureDetector(
              onTap: () => _showPhotoBrowser(
                context,
                results.map((e) => e.url).toList(),
                index,
              ),
              onLongPress: () => cubit.downloadImage(imageUrl),
              child: Stack(
                children: [
                  Positioned.fill(
                      child: CachedNetworkImage(
                    imageUrl: results[index].url,
                    fit: BoxFit.cover,
                    // ロード中はこの Widget を「出し続ける」
                    placeholder: (context, url) => Container(
                      color: Colors.grey[200],
                      child: const Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  )),
                  Positioned(
                    top: 4,
                    right: 4,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black26,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : Colors.white,
                        ),
                        onPressed: () {
                          // お気に入りの実体を持つ FavoriteCubit に通知
                          context
                              .read<FavoriteCubit>()
                              .toggleFavorite(imageUrl);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            // 一番下のクルクル表示
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
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
