import 'package:dio/dio.dart';
import '../core/app_config.dart';
import '../model/image_result.dart';
import 'image_repository.dart';

class ImageRepositoryImpl implements ImageRepository {
  final Dio _dio;

  ImageRepositoryImpl(this._dio);

  @override
  Future<List<ImageResult>> fetchImages(
      {required String searchWord, int page = 1}) async {
    final keyword = Uri.encodeComponent(searchWord);
    final start = (page - 1) * 40 + 1;
    final url =
        "${AppConfig.yahooSearchBaseUrl}?ei=UTF-8&p=$keyword&&n=40&b=$start";

    final response = await _dio.get(url,
        options: Options(headers: {
          'User-Agent': AppConfig.userAgent,
        }));

    if (response.statusCode != 200) throw Exception('HTTP Error');

    final body = response.data.toString();
    final regex =
        RegExp(r'(https?)://msp.c.yimg.jp/([A-Z0-9a-z._%+-/]{2,1024}).jpg');
    final matches = regex.allMatches(body);

    // 重複を除去してモデルのリストに変換
    return matches
        .map((m) => body.substring(m.start, m.end))
        .toSet() // 重複排除
        .map((url) => ImageResult(url: url))
        .toList();
  }
}
