import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ↓コマンドを実行すると自動で作成されるファイルです。
// 最初は赤線が出ますが、build_runner 実行後に解消されるので無視してOKです。
import 'injection.config.dart';

// ここに定義！ (Top-level variable)
final locator = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // 以前のバージョンは 'initGetIt' でしたが、最新は 'init' が一般的です
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() => locator.init();

@module
abstract class RegisterModule {
  // DioをGetItに登録する
  @singleton
  Dio get dio => Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  // SharedPreferences の登録
  @preResolve // 初期化が終わるまでアプリの起動を待機させる
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  // httpパッケージのClientを登録
  @injectable
  http.Client get httpClient => http.Client();
}
