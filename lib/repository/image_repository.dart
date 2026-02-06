import '../model/image_result.dart';

abstract class ImageRepository {
  Future<List<ImageResult>> fetchImages(
      {required String searchWord, int page = 1});
}
