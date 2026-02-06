import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'favorite_cubit.dart';
import 'favorite_state.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 画面表示時にロード
    // FavoriteCubit の状態を監視
    context.read<FavoriteCubit>().load();

    return Scaffold(
      appBar: AppBar(title: const Text('お気に入り')),
      body: BlocBuilder<FavoriteCubit, FavoriteState>(
        builder: (context, state) {
          // sealed class なので、全ての状態を網羅的に記述できる
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text(message)),
            success: (favoriteUrls) {
              if (favoriteUrls.isEmpty) {
                return const Center(child: Text('お気に入りはまだありません'));
              }

              return GridView.builder(
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemCount: favoriteUrls.length,
                itemBuilder: (context, index) {
                  final url = favoriteUrls[index];
                  return Stack(
                    children: [
                      Positioned.fill(
                        child: Image.network(url, fit: BoxFit.cover),
                      ),
                      // ここで削除ボタンを押せば、FavoriteCubit が更新され、
                      // 検索画面に戻った時、あちらのハートも自動で消えています！
                      Positioned(
                        top: 0,
                        right: 0,
                        child: IconButton(
                          icon: const Icon(Icons.favorite, color: Colors.red),
                          onPressed: () =>
                              context.read<FavoriteCubit>().removeFavorite(url),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
