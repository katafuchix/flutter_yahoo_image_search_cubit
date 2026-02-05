import 'dart:typed_data';
import 'package:image_gallery_saver/image_gallery_saver.dart';

class GalleryService {
  Future<void> save(Uint8List bytes) async {
    // 実際のOS保存処理をここに隔離する
    await ImageGallerySaver.saveImage(bytes);
  }
}
