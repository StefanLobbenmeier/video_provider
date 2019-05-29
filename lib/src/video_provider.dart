import 'package:video_provider/src/concrete_video_providers/gfycat.dart';
import 'package:video_provider/src/concrete_video_providers/imgur.dart';
import 'package:video_provider/src/concrete_video_providers/reddit_video.dart';

import 'video.dart';

abstract class VideoProvider {
  final Uri uri;

  const VideoProvider(this.uri);

  factory VideoProvider.fromUri(Uri uri) {
    if (ImgurProvider.supportsUri(uri)) return ImgurProvider(uri);
    if (GfycatProvider.supportsUri(uri)) return GfycatProvider(uri);
    if (RedditVideoProvider.supportsUri(uri)) return RedditVideoProvider(uri);
    return null;
  }

  static bool supportsVideoProvider(Uri uri) {
    return VideoProvider.fromUri(uri) != null;
  }

  List<Video> getVideos();
}
