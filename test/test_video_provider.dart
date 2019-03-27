import 'package:video_provider/src/concrete_video_providers/imgur.dart';
import 'package:video_provider/src/concrete_video_providers/gfycat.dart';
import 'package:video_provider/src/video_provider.dart';
import 'package:test/test.dart';

void main() {
  test('video_provider_factory', () {
    expect(
      VideoProvider.fromUri(Uri.parse("https://i.imgur.com/4a3Ch82.gifv")),
      TypeMatcher<ImgurProvider>(),
    );
    expect(
      VideoProvider.fromUri(Uri.parse("https://gfycat.com/ConstantDecimalKarakul")),
      TypeMatcher<GfycatProvider>(),
    );
  });

  test('video_provider_supportsVideoProvider', () {
    expect(
      VideoProvider.supportsVideoProvider(Uri.parse("https://i.imgur.com/4a3Ch82.gifv")),
      true,
    );
    expect(
      VideoProvider.supportsVideoProvider(Uri.parse("https://gfycat.com/ConstantDecimalKarakul")),
      true,
    );
    expect(
      VideoProvider.supportsVideoProvider(Uri.parse("https://google.com")),
      false,
    );
  });
}
