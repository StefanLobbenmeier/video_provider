import 'package:video_provider/src/video.dart';
import 'package:video_provider/src/resolution.dart';
import 'package:video_provider/src/filetype.dart';

import 'video_provider.dart';

class GfycatProvider extends VideoProvider {
  GfycatProvider(Uri uri) : super(uri);

  @override
  List<Video> getVideos() {
    return [
      Video(Resolution.high, Filetype.mp4, gfycat_to_giant_mp4(uri)),
      Video(Resolution.low, Filetype.mp4, gfycat_to_thumbs_mp4(uri)),
    ];
  }
}

Uri gfycat_to_giant_mp4(Uri gfycat_url) {
  return Uri.https(
    gfycat_url.authority.replaceFirst("gfycat", "giant.gfycat"),
    gfycat_url.path + ".mp4",
  );
}
Uri gfycat_to_thumbs_mp4(Uri gfycat_url) {
  return Uri.https(
    gfycat_url.authority.replaceFirst("gfycat", "thumbs.gfycat"),
    gfycat_url.path + ".mp4",
  );
}
