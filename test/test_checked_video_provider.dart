import 'package:video_provider/src/imgur.dart';
import 'package:video_provider/src/gfycat.dart';
import 'package:video_provider/src/checked_video_provider.dart';
import 'package:test/test.dart';

void main() {
  test('checked_video_provider_returns_single_imgur_mp4', () async {
    var imgurList = await CheckedVideoProvider.fromUri(
        Uri.parse("https://i.imgur.com/4a3Ch82.gifv"))
        .getVideos()
        .toList();
    expect(imgurList.length, 1);
    expect(imgurList.first.uri, Uri.parse("https://i.imgur.com/4a3Ch82.mp4"));
  });

  test('checked_video_provider_returns_no_result_for_bad_imgur', () async {
    var imgurList = await CheckedVideoProvider.fromUri(
        Uri.parse("https://i.imgur.com/ThisIsDefinetlyNotAVideoOnImgur.gifv"))
        .getVideos()
        .toList();
    expect(imgurList.length, 0);
  });


  test('checked_video_provider_returns_only_working_gfycat', () async {
    var imgurList = await CheckedVideoProvider.fromUri(
        Uri.parse("https://gfycat.com/ScratchyBarrenDeermouse-mobile"))
        .getVideos()
        .toList();
    expect(imgurList.length, 1);
    expect(imgurList.first.uri, Uri.parse("https://thumbs.gfycat.com/ScratchyBarrenDeermouse-mobile.mp4"));
  });
}
