import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:video_provider/src/api_video_provider.dart';
import 'package:video_provider/src/filetype.dart';
import 'package:video_provider/src/resolution.dart';
import 'package:video_provider/src/video.dart';

class GfycatProvider extends ApiVideoProvider {
  static final RegExp videoNameParser =
      new RegExp("[A-Z]?[a-z]*[A-Z]?[a-z]*[A-Z]?[a-z]*");

  GfycatProvider(Uri uri) : super(uri);

  @override
  List<Video> getVideos() {
    return [
      Video(Resolution.high, Filetype.mp4, gfycat_to_giant_mp4(uri)),
      Video(Resolution.low, Filetype.mp4, gfycat_to_thumbs_mp4(uri)),
    ];
  }

  @override
  Stream<Video> getApiVideo() async* {
    var videoname = getVideoName();
    var api = "https://api.gfycat.com/v1/gfycats/$videoname";

    var result = await http.get(api);
    Map decodedResult = jsonDecode(result.body)["gfyItem"];

    assert(decodedResult != null, result.body);

    yield Video(
      Resolution.high,
      Filetype.mp4,
      Uri.parse(decodedResult["mp4Url"]),
    );
  }

  String getVideoName() {
    return videoNameParser.firstMatch(uri.path).group(0);
  }
}

Uri gfycat_to_giant_mp4(Uri gfycat_url) {
  return Uri.https(
    gfycat_url.authority.replaceFirst("gfycat", "giant.gfycat"),
    gfycat_url.path + ".mp4",
  );
}

Uri gfycat_to_thumbs_mp4(Uri gfycat_url) {
  return Uri.https(
    gfycat_url.authority.replaceFirst("gfycat", "thumbs.gfycat"),
    gfycat_url.path + ".mp4",
  );
}
