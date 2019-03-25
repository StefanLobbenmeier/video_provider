import 'package:video_provider/video_provider.dart';

main() {
  Uri mp4Uri = VideoProvider
      .fromUri(Uri.parse("https://i.imgur.com/example.gifv"))
      .getMp4Uri();

  print(mp4Uri); // prints https://i.imgur.com/example.mp4
}