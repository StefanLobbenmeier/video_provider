import 'package:video_provider/src/filetype.dart';
import 'package:video_provider/src/resolution.dart';
import 'package:video_provider/src/video.dart';
import 'package:video_provider/src/video_provider.dart';

class RedditVideoProvider extends VideoProvider {
  RedditVideoProvider(Uri uri) : super(uri);

  @override
  List<Video> getVideos() {
    return [
      Video(Resolution.normal, Filetype.m3u8, reddit_to_m3u8(uri)),
      Video(Resolution.normal, Filetype.mpd, reddit_to_mpd(uri)),
    ];
  }

  static bool supportsUri(Uri uri) {
    return uri.host == "v.redd.it";
  }
}

Uri reddit_to_m3u8(Uri reddit_uri) {
  var newPathSegements = List.of(reddit_uri.pathSegments);
  newPathSegements.add("HLSPlaylist.m3u8");
  return reddit_uri.replace(pathSegments: newPathSegements);
}

Uri reddit_to_mpd(Uri reddit_uri) {
  var newPathSegements = List.of(reddit_uri.pathSegments);
  newPathSegements.add("DASHPlaylist.mpd");
  return reddit_uri.replace(pathSegments: newPathSegements);
}
