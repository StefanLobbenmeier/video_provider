import 'package:http/http.dart' as http;

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

  Stream<Video> getVideos() async* {
    for (var video in videoProvider.getVideos()) {
      var response = await http.get(video.uri);
      if (response.statusCode == 200)
        yield video;
    }
  }
}
