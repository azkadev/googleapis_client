import 'dart:io';

import 'package:general_lib/general_lib.dart';
import 'package:general_lib/general_lib_core.dart';
import 'package:googleapis_client/youtube/youtube.dart';

void main() async {
  String url =
      "https://www.youtube.com/watch?v=Guyo6U9aTmk&t=40s&pp=ygUjd2F0Y2ggZG9ncyAyIGdhbWVwbGF5IG5vIGNvbW1lbnRhcnk%3D";
  YoutubeNoAuth youtubeNoAuth = YoutubeNoAuth();
  final res = await youtubeNoAuth.getVideoManifest(video_id: "Guyo6U9aTmk");
  // res.toJson().printPretty();
  //
  final videos = res.videos.where((e) => e.mime_type == "video/mp4").toList();
  videos.sort((a, b) {
    return (a.size ?? 0).compareTo(b.size ?? 0);
  });
  print(FileSize.filesize(
    size: videos.first.size,
  ));
  print(FileSize.filesize(
    size: videos.last.size,
  ));
  exit(0);
}
