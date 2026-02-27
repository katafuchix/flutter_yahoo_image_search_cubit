// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import 'injection.dart' as _i464;
import 'repository/favorite_repository.dart' as _i583;
import 'repository/favorite_repository_impl.dart' as _i732;
import 'repository/image_repository.dart' as _i683;
import 'repository/image_repository_impl.dart' as _i253;
import 'service/gallery_service.dart' as _i82;
import 'ui/favorite/favorite_cubit.dart' as _i165;
import 'ui/yahoo_image_search/yahoo_image_search_cubit.dart' as _i71;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i519.Client>(() => registerModule.httpClient);
    gh.singleton<_i361.Dio>(() => registerModule.dio);
    gh.singleton<_i82.GalleryService>(() => _i82.GalleryService());
    gh.factory<_i583.FavoriteRepository>(() => _i732.FavoriteRepositoryImpl());
    gh.factory<_i683.ImageRepository>(
      () => _i253.ImageRepositoryImpl(gh<_i361.Dio>()),
    );
    gh.factory<_i165.FavoriteCubit>(
      () => _i165.FavoriteCubit(gh<_i583.FavoriteRepository>()),
    );
    gh.factory<_i71.YahooImageSearchCubit>(
      () => _i71.YahooImageSearchCubit(
        gh<_i683.ImageRepository>(),
        gh<_i82.GalleryService>(),
        gh<_i583.FavoriteRepository>(),
        gh<_i519.Client>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i464.RegisterModule {}
