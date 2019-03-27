import 'imgur.dart';
import 'gfycat.dart';

import 'video.dart';

abstract class VideoProvider {
  final Uri uri;

  const VideoProvider(this.uri);

  factory VideoProvider.fromUri(Uri uri) {
    switch (uri.host) {
      case "i.imgur.com":
        return ImgurProvider(uri);
      case "gfycat.com":
        return GfycatProvider(uri);
      default:
        return null;
    }
  }

  static bool supportsVideoProvider(Uri uri) {
    return VideoProvider.fromUri(uri) != null;
  }

  List<Video> getVideos();
}
