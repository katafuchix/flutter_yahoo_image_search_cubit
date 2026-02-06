import 'package:flutter/material.dart';

import '../repository/favorite_repository_impl.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('お気に入りリスト')),
      body: FutureBuilder<List<String>>(
        future: FavoriteRepositoryImpl().getFavorites(), // 保存されたURLを取得
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final urls = snapshot.data!;
          if (urls.isEmpty) return const Center(child: Text('お気に入りはまだありません'));

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: urls.length,
            itemBuilder: (context, index) =>
                Image.network(urls[index], fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
