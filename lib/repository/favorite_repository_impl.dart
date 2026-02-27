import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../injection.dart';
import 'favorite_repository.dart';

@Injectable(as: FavoriteRepository)
class FavoriteRepositoryImpl implements FavoriteRepository {
  static const _key = 'favorite_urls';

  @override
  Future<List<String>> getFavorites() async {
    final prefs = locator<SharedPreferences>();
    return prefs.getStringList(_key) ?? [];
  }

  @override
  Future<void> toggleFavorite(String url) async {
    final prefs = locator<SharedPreferences>();
    final list = prefs.getStringList(_key) ?? [];
    if (list.contains(url)) {
      list.remove(url);
    } else {
      list.add(url);
    }
    await prefs.setStringList(_key, list);
  }
}
