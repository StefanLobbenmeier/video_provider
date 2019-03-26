import 'imgur.dart';
import 'gfycat.dart';

abstract class VideoProvider {
  Uri uri;

  VideoProvider(this.uri);

  factory VideoProvider.fromUri(Uri uri) {
    switch (uri.host) {
      case "i.imgur.com":
        return ImgurProvider(uri);
      case "gfycat.com":
        return GfycatProvider(uri);
      default:
        print("Unknown video provider: $uri, "
            "with authority ${uri.authority} "
            "and host ${uri.host}");
        return null;
    }
  }

  static bool supportsVideoProvider(Uri uri) {
    return VideoProvider.fromUri(uri) != null;
  }

  Uri getMp4Uri();
}
