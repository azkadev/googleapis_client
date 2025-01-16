import 'dart:io';

import 'package:googleapis_client/youtube/youtube.dart';
import "package:path/path.dart" as path;

void main(List<String> args) async {
  final YoutubeNoAuth youtubeNoAuth = YoutubeNoAuth();
  {
    await for (final _ in youtubeNoAuth.downloadAsAudio(
      youtubeUrl:
          "https://www.youtube.com/watch?v=_qDML_BCju8&list=PLP0zAgTBT331Z4vrbKb3zf0LR_9-_Dser",
      directory: Directory(path.join(Directory.current.path, "download")),
    )) {}
  }
  exit(0);
}
