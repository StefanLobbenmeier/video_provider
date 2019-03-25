# Video Provider

This library enables you to extract mp4 videos from various video providers. Currently supported:

- Imgur
- Gfycat

More will follow, feel free to make pull requests or raise issues with examples.

## Usage

A simple usage example:

```dart
import 'package:video_provider/video_provider.dart';

main() {
  Uri mp4Uri = VideoProvider
          .fromUri(Uri.parse("https://i.imgur.com/example.gifv"))
          .getMp4Uri();

  print(mp4Uri); // prints https://i.imgur.com/example.mp4
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/StefanLobbenmeier/video_provider/issues
