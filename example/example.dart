import 'package:video_provider/video_provider.dart';

void main() {
  /**
   * If you only care for quick link conversion and want to check the result
   * yourself, use the VideoProvider:
   */
  var potentialUris = VideoProvider.fromUri(
    Uri.parse('https://i.imgur.com/example.gifv'),
  ).getVideos();

  // prints https://i.imgur.com/example.mp4
  for (var video in potentialUris) {
    print(video.uri);
  }

  /**
   * If you want to make sure the videos provided are actually available,
   * use the CheckedVideoProvider:
   */
  var checkedUris = CheckedVideoProvider.fromUri(
    Uri.parse('https://gfycat.com/ScratchyBarrenDeermouse-mobile'),
  ).getVideos();

  /**
   * Only prints 'https://thumbs.gfycat.com/ScratchyBarrenDeermouse-mobile.mp4',
   * as this particular video does not have a HighRes version
   */
  checkedUris.forEach((video) => print(video.uri));
}
