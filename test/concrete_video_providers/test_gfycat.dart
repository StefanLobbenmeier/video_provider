import 'package:test/test.dart';
import 'package:video_provider/src/concrete_video_providers/gfycat.dart';
import 'package:video_provider/video_provider.dart';

void main() {
  test('gfycat_mp4', () {
    expect(
      gfycat_to_giant_mp4(
          Uri.parse('https://gfycat.com/ConstantDecimalKarakul')),
      Uri.parse('https://giant.gfycat.com/ConstantDecimalKarakul.mp4'),
    );
    expect(
      gfycat_to_thumbs_mp4(
          Uri.parse('https://gfycat.com/ConstantDecimalKarakul')),
      Uri.parse('https://thumbs.gfycat.com/ConstantDecimalKarakul.mp4'),
    );
  });

  test('gfycat_mp4_api', () async {
    expect(
      await GfycatProvider(
              Uri.parse('https://gfycat.com/ConstantDecimalKarakul'))
          .getApiVideo()
          .toList(),
      [
        Video(Resolution.high, Filetype.mp4,
            Uri.parse('https://giant.gfycat.com/ConstantDecimalKarakul.mp4'))
      ],
    );
  });

  test('gfycat_regex', () {
    expect(
      GfycatProvider.videoNameParser
          .firstMatch('ConstantDecimalKarakul')
          .group(0),
      'ConstantDecimalKarakul',
    );
    expect(
      GfycatProvider.videoNameParser
          .firstMatch('ConstantDecimalKarakul-mobile')
          .group(0),
      'ConstantDecimalKarakul',
    );
    expect(
      GfycatProvider.videoNameParser
          .firstMatch('constantdecimalkarakul-mobile')
          .group(0),
      'constantdecimalkarakul',
    );
  });
}
