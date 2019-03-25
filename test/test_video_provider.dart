import 'package:reddit_video_utils/src/imgur_mp4.dart';
import 'package:reddit_video_utils/src/gfycat_mp4.dart';
import 'package:reddit_video_utils/src/video_provider.dart';
import 'package:test/test.dart';

void main() {
  test('video_provider', () {
    expect(
      VideoProvider.fromUri(Uri.parse("https://i.imgur.com/4a3Ch82.mp4")),
      TypeMatcher<ImgurProvider>(),
    );
    expect(
      VideoProvider.fromUri(Uri.parse("https://gfycat.com/ConstantDecimalKarakul")),
      TypeMatcher<GfycatProvider>(),
    );
  });
}
