import 'package:equatable/equatable.dart';

class ImageResult extends Equatable {
  final String url;

  // 他にタイトルやサイズなどが取れるようになった際、ここに追加
  ImageResult({required this.url});

  @override
  // これを定義することで、urlが同じなら「同じインスタンス」とみなされるようになります
  // Swift でいう 'static func ==' の中身をリストで書くイメージです
  List<Object?> get props => [url];
}
