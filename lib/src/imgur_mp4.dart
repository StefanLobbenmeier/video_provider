import 'video_provider.dart';

class ImgurProvider extends VideoProvider {
  ImgurProvider(Uri uri): super(uri);

  @override
  getMp4Uri() {
    return imgur_to_mp4(uri);
  }
}

Uri imgur_to_mp4(Uri gifv_url) {
  assert(gifv_url.path.endsWith(".gifv"));
  String newPath = gifv_url.path.replaceRange(
      gifv_url.path.lastIndexOf("."), gifv_url.path.length, ".mp4");
  return gifv_url.replace(path: newPath);
}
