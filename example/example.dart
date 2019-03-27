import 'package:video_provider/src/video.dart';
import 'package:video_provider/video_provider.dart';

main() {
  List<Video> potentialUris = VideoProvider
      .fromUri(Uri.parse("https://i.imgur.com/example.gifv"))
      .getVideos();

  // prints https://i.imgur.com/example.mp4
  for(var video in potentialUris)
    print(video.uri);

}