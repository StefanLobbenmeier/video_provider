import 'package:test/test.dart';
import 'package:video_provider/src/concrete_video_providers/reddit_video.dart';

void main() {
  test('reddit_m3u8', () {
    expect(
      reddit_to_m3u8(Uri.parse('https://v.redd.it/u1iypazo6ko21')),
      Uri.parse('https://v.redd.it/u1iypazo6ko21/HLSPlaylist.m3u8'),
    );
  });

  test('reddit_mpd', () {
    expect(
      reddit_to_mpd(Uri.parse('https://v.redd.it/u1iypazo6ko21')),
      Uri.parse('https://v.redd.it/u1iypazo6ko21/DASHPlaylist.mpd'),
    );
  });

  test('reddit_mp4', () {
    expect(
      reddit_to_mp4(Uri.parse(
          'https://v.redd.it/swed3m8njke51/DASH_1080.mp4?source=fallback')),
      Uri.parse(
          'https://v.redd.it/swed3m8njke51/DASH_1080.mp4?source=fallback'),
    );
  });
}
