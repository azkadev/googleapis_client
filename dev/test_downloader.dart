import 'dart:io';

import 'package:googleapis_client/youtube/youtube.dart';
import "package:path/path.dart" as path;

void main(List<String> args) async {
  final YoutubeNoAuth youtubeNoAuth = YoutubeNoAuth();
  {
    await for (final _ in youtubeNoAuth.downloadAsAudio(
      youtubeUrl: "https://www.youtube.com/watch?v=Y5asikkcHiQ",
      directory: Directory(path.join(Directory.current.path, "download")),
    )) {}
  }
  exit(0);
}
