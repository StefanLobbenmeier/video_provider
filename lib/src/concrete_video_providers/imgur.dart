import 'package:video_provider/src/filetype.dart';
import 'package:video_provider/src/resolution.dart';
import 'package:video_provider/src/video.dart';
import 'package:video_provider/src/video_provider.dart';

class ImgurProvider extends VideoProvider {
  ImgurProvider(Uri uri) : super(uri);

  @override
  List<Video> getVideos() {
    return [
      Video(Resolution.normal, Filetype.mp4, imgur_to_mp4(uri)),
    ];
  }

  static bool supportsUri(Uri uri) {
    return uri.host == "i.imgur.com" &&
        (uri.path.endsWith("gifv") ||
            uri.path.endsWith("gif") ||
            uri.path.endsWith("mp4"));
  }
}

Uri imgur_to_mp4(Uri gifv_url) {
  String newPath = gifv_url.path.replaceRange(
      gifv_url.path.lastIndexOf("."), gifv_url.path.length, ".mp4");
  return gifv_url.replace(path: newPath);
}
