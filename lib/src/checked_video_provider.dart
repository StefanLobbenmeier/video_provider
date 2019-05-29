import 'package:http/http.dart' as http;
import 'package:video_provider/src/api_video_provider.dart';

import 'video.dart';
import 'video_provider.dart';

class CheckedVideoProvider {
  VideoProvider videoProvider;

  CheckedVideoProvider(this.videoProvider);

  factory CheckedVideoProvider.fromUri(Uri uri) {
    return CheckedVideoProvider(
      VideoProvider.fromUri(uri),
    );
  }

  Stream<Video> getVideos() {
    if (videoProvider is ApiVideoProvider) {
      return (videoProvider as ApiVideoProvider).getApiVideo();
    } else {
      return getSucessfullyResolvedVideos();
    }
  }

  Stream<Video> getSucessfullyResolvedVideos() async* {
    for (var video in videoProvider.getVideos()) {
      var response = await http.head(video.uri);
      if (response.statusCode == 200) yield video;
    }
  }
}
