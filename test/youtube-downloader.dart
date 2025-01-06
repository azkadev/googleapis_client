//TODO: Fixing the console printing.

// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'dart:async';
import 'dart:io';

import 'package:googleapis_client/fork/youtube_explode_dart/youtube_explode_dart.dart';
import "package:path/path.dart" as path;

// Initialize the YoutubeExplode instance.
final yt = YoutubeExplode();
// ffmpeg -i input_video.mp4 \
//   -i input_audio.mp3 \
//   -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 \
//   output.mp4

Future<void> main() async {
  final url = "https://www.youtube.com/watch?v=weOGj4Ngahs&list=PLP0zAgTBT330oyPU3o7zJiFhZ8aK_oxVk&index=7";
  // Get video metadata.
  final video = await yt.videos.get(url);

  // Get the video manifest.
  final manifest = await yt.videos.streamsClient.getManifest(url);
  print(video.author);

  yt.close();
  exit(0);
}
