// ignore_for_file: dead_code

import 'dart:io';

import 'package:googleapis_client/youtube/youtube.dart';
import "package:path/path.dart" as path;

void main(List<String> args) async {
  final YoutubeNoAuth youtubeNoAuth = YoutubeNoAuth();
  final String url = "https://www.youtube.com/watch?v=zQjgD3WlUTE";
  bool isAudio = true;
  if (isAudio) {
    await for (final _ in youtubeNoAuth.downloadAsAudio(
      youtubeUrl: url,
      directory: Directory(path.join(Directory.current.path, "download")),
    )) {
      // 
    }
  } else {
    await for (final _ in youtubeNoAuth.downloadAsVideo(
      youtubeUrl: url,
      directory: Directory(path.join(Directory.current.path, "download")),
    )) {}
  }
  exit(0);
}
