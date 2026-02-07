import 'package:flutter/cupertino.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import '../ui/yahoo_image_search/yahoo_image_search_screen.dart';
import '../ui/favorite/favorite_screen.dart'; // これから作る画面

final router = GoRouter(
  initialLocation: '/',
  observers: [FlutterSmartDialog.observer],
  routes: [
    // メインの検索画面
    GoRoute(
      path: '/',
      builder: (context, state) => const YahooImageSearchScreen(),
    ),
    // お気に入り画面
    GoRoute(
      path: '/favorites',
      //builder: (context, state) => const FavoriteScreen(),
      pageBuilder: (context, state) {
        // これを使うだけで、OSがiOSなら自動的にあのスライド＋影付きアニメになります
        return CupertinoPage(
          key: state.pageKey,
          child: const FavoriteScreen(),
        );
      },
    ),
  ],
);
