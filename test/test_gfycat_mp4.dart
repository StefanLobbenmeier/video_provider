import 'package:reddit_video_utils/src/gfycat_mp4.dart';
import 'package:test/test.dart';

void main() {
  test('imgur_mp4', () {
    expect(
      gfycat_to_mp4(Uri.parse("https://gfycat.com/ConstantDecimalKarakul")),
      Uri.parse("https://giant.gfycat.com/ConstantDecimalKarakul.mp4"),
    );
  });
}