import 'video_provider.dart';

class GfycatProvider extends VideoProvider {
  GfycatProvider(Uri uri) : super(uri);

  @override
  Uri getMp4Uri() {
    return gfycat_to_mp4(uri);
  }
}

Uri gfycat_to_mp4(Uri gfycat_url) {
  return Uri.https(
    gfycat_url.authority.replaceFirst("gfycat", "giant.gfycat"),
    gfycat_url.path + ".mp4",
  );
}
