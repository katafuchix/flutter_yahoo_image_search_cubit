import 'package:shared_preferences/shared_preferences.dart';

abstract class FavoriteRepository {
  Future<List<String>> getFavorites();

  Future<void> toggleFavorite(String url);
}
