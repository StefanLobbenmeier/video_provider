import 'test_imgur.dart' as test_imgur_to_mp4;
import 'test_gfycat.dart' as test_gfycat_to_mp4;
import 'test_video_provider.dart' as test_video_provider;
import 'test_checked_video_provider.dart' as test_checked_video_provider;

void main() {
  // Online
  test_checked_video_provider.main();

  // Offline
  test_imgur_to_mp4.main();
  test_gfycat_to_mp4.main();
  test_video_provider.main();
}
