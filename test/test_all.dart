import 'concrete_video_providers/test_all_concrete_video_providers.dart' as test_all_concrete_video_providers;
import 'test_checked_video_provider.dart' as test_checked_video_provider;
import 'test_video_provider.dart' as test_video_provider;

void main() {
  // Online
  test_checked_video_provider.main();

  // Offline
  test_video_provider.main();
  test_all_concrete_video_providers.main();
}
