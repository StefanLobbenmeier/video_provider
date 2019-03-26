import 'filetype.dart';
import 'resolution.dart';

class Video {
  Resolution resolution;
  Filetype filetype;

  Uri uri;

  Video(
    this.resolution,
    this.filetype,
    this.uri,
  );
}
