import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import '../repository/image_repository_impl.dart';
import 'components/photo_browser.dart';
import 'yahoo_image_search_cubit.dart';
import 'yahoo_image_search_state.dart';

class YahooImageSearchScreen extends StatelessWidget {
  const YahooImageSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // BlocProvider で Cubit を生成・注入
    return BlocProvider(
      create: (_) => YahooImageSearchCubit(ImageRepositoryImpl(Dio())),
      child: const _YahooImageSearchScreen(),
    );
  }
}

class _YahooImageSearchScreen extends StatelessWidget {
  const _YahooImageSearchScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Yahoo Image Search')),
      // BlocConsumer で状態の監視とダイアログの制御を両立
      body: BlocConsumer<YahooImageSearchCubit, YahooImageSearchState>(
        listener: (context, state) {
          // 1. Loadingの制御
          if (state.isLoading) {
            SmartDialog.showLoading();
          } else {
            SmartDialog.dismiss();
          }
          // 2. エラー発生時に 一度だけ SnackBar を表示
          if (state.error != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('エラーが発生しました: ${state.error}'),
                backgroundColor: Colors.redAccent,
                behavior: SnackBarBehavior.floating, // 浮いた感じのモダンなデザイン
                action: SnackBarAction(
                  label: '閉じる',
                  textColor: Colors.white,
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          final cubit = context.read<YahooImageSearchCubit>();

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      onChanged: cubit.setSearchWord,
                      decoration: const InputDecoration(
                        labelText: '検索キーワード',
                        border: OutlineInputBorder(),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: state.isSearchButtonEnabled && !state.isLoading
                          ? () {
                        FocusScope.of(context).unfocus();
                        cubit.search();
                      }
                          : null,
                      child: state.isLoading
                          ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2))
                          : const Text('検索'),
                    ),
                    if (state.error != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('エラー: ${state.error}', style: const TextStyle(color: Colors.red)),
                      ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: GridView.builder(
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: state.results.length,
                    itemBuilder: (context, index) {
                      final imageUrl = state.results[index].url;
                      return GestureDetector(
                        onTap: () => _showPhotoBrowser(context, state.results.map((e) => e.url).toList(), index),
                        child: Image.network(imageUrl, fit: BoxFit.cover),
                      );
                    },
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  void _showPhotoBrowser(BuildContext context, List<String> photos, int initialIndex,) {
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