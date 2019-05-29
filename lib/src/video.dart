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

  @override
  String toString() {
    return 'Video{resolution: $resolution, filetype: $filetype, uri: $uri}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Video &&
              runtimeType == other.runtimeType &&
              resolution == other.resolution &&
              filetype == other.filetype &&
              uri == other.uri;

  @override
  int get hashCode =>
      resolution.hashCode ^
      filetype.hashCode ^
      uri.hashCode;
}
