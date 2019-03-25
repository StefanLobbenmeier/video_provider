import 'package:reddit_video_utils/src/imgur_mp4.dart';
import 'package:test/test.dart';

void main() {
  test('imgur_mp4', () {
    expect(imgur_to_mp4("blabla.gifv"), "blabla.mp4");
  });
}