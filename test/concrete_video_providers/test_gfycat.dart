import 'package:test/test.dart';
import 'package:video_provider/src/concrete_video_providers/gfycat.dart';

void main() {
  test('imgur_mp4', () {
    expect(
      gfycat_to_giant_mp4(
          Uri.parse("https://gfycat.com/ConstantDecimalKarakul")),
      Uri.parse("https://giant.gfycat.com/ConstantDecimalKarakul.mp4"),
    );
    expect(
      gfycat_to_thumbs_mp4(
          Uri.parse("https://gfycat.com/ConstantDecimalKarakul")),
      Uri.parse("https://thumbs.gfycat.com/ConstantDecimalKarakul.mp4"),
    );
  });
}
