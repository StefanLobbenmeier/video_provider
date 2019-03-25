import 'package:reddit_video_utils/src/imgur_mp4.dart';
import 'package:test/test.dart';

void main() {
  test('imgur_mp4', () {
    expect(
      imgur_to_mp4(Uri.parse("https://i.imgur.com/4a3Ch82.gifv")),
      Uri.parse("https://i.imgur.com/4a3Ch82.mp4"),
    );
  });
}