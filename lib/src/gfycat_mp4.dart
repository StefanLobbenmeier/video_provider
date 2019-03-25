import 'package:http/http.dart' as http;
import 'dart:convert';

Uri gfycat_to_mp4(Uri gfycat_url) {
  return Uri.https(
    gfycat_url.authority.replaceFirst("gfycat", "giant.gfycat"),
    gfycat_url.path + ".mp4",
  );
}
