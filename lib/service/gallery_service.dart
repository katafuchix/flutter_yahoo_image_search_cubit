import 'dart:typed_data';
import 'package:gal/gal.dart';
import 'package:injectable/injectable.dart'; // 新しいパッケージ

@singleton
class GalleryService {
  Future<void> save(Uint8List bytes) async {
    // gal を使って保存。画像として保存することを明示する
    await Gal.putImageBytes(bytes);
  }
}

/*
import 'package:image_gallery_saver/image_gallery_saver.dart';

class GalleryService {
  Future<void> save(Uint8List bytes) async {
    // 実際のOS保存処理をここに隔離する
    await ImageGallerySaver.saveImage(bytes);
  }
}
*/
