import 'video.dart';
import 'video_provider.dart';

abstract class ApiVideoProvider extends VideoProvider {
  ApiVideoProvider(Uri uri) : super(uri);

  Future<List<Video>> getApiVideo();
}