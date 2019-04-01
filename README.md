# Video Provider

[![Build Status](https://travis-ci.org/StefanLobbenmeier/video_provider.svg?branch=master)](https://travis-ci.org/StefanLobbenmeier/video_provider) [![Pub Version](https://img.shields.io/pub/v/video_provider.svg)](https://pub.dartlang.org/packages/video_provider)

This library enables you to extract mp4 videos from various video providers. Currently supported:

- Imgur
- Gfycat
- Reddit Videos

You can use VideoProvider offline (producing potentially unavailable videos) or CheckedVideoProvider online (which only returns the videos actually available).

More will follow, feel free to make pull requests or raise issues with examples.

## Usage

A simple usage example:

```dart
import 'package:video_provider/video_provider.dart';

main() {
  /**
   * If you only care for quick link conversion and want to check the result
   * yourself, use the VideoProvider:
   */
  List<Video> potentialUris = VideoProvider.fromUri(
    Uri.parse("https://i.imgur.com/example.gifv"),
  ).getVideos();

  // prints https://i.imgur.com/example.mp4
  for (var video in potentialUris) print(video.uri);

  /**
   * If you want to make sure the videos provided are actually available,
   * use the CheckedVideoProvider:
   */
  Stream<Video> checkedUris = CheckedVideoProvider.fromUri(
    Uri.parse("https://gfycat.com/ScratchyBarrenDeermouse-mobile"),
  ).getVideos();

  /**
   * Only prints "https://thumbs.gfycat.com/ScratchyBarrenDeermouse-mobile.mp4",
   * as this particular video does not have a HighRes version
   */
  checkedUris.forEach((video) => print(video.uri));
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/StefanLobbenmeier/video_provider/issues
