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
  final url =
      "https://www.youtube.com/watch?v=weOGj4Ngahs&list=PLP0zAgTBT330oyPU3o7zJiFhZ8aK_oxVk&index=7";

  final Directory directory =
      Directory(path.join(Directory.current.path, "youtube-downloader-temp"));
  if (directory.existsSync() == false) {
    await directory.create(recursive: true);
  }

  // Download the video.
  await download(
    directory: directory,
    youtubeUrl: url,
  );

  yt.close();
  exit(0);
}

Future<void> download({
  required Directory directory,
  required String youtubeUrl,
}) async {
  // Get video metadata.
  final video = await yt.videos.get(youtubeUrl);

  // Get the video manifest.
  final manifest = await yt.videos.streamsClient.getManifest(youtubeUrl);

  final fileName = '${video.title}'
      .replaceAll(r'\', '')
      .replaceAll('/', '')
      .replaceAll('*', '')
      .replaceAll('?', '')
      .replaceAll('"', '')
      .replaceAll('<', '')
      .replaceAll('>', '')
      .replaceAll(':', '')
      .replaceAll('|', '');
  final List<File> files = [];
  {
    final streams = manifest.videoOnly;

    final videoStreamInfo = streams.withHighestBitrate();
    final videoStream = yt.videos.streamsClient.get(videoStreamInfo);

    // Compose the file name removing the unallowed characters in windows.
    final file = File(path.join(
        directory.path, '${fileName}.video.${videoStreamInfo.container.name}'));

    // Track the file download status.
    final len = videoStreamInfo.size.totalBytes;

    if (file.statSync().size != len) {
      // Open the file in writeAppend.
      final output = file.openWrite(mode: FileMode.writeOnlyAppend);

      var count = file.statSync().size;

      // Create the message and set the cursor position.
      final msg =
          'Downloading ${video.title}.${videoStreamInfo.container.name}';
      stdout.writeln(msg);

      // Listen for data received.
      await for (final data in videoStream) {
        // Keep track of the current downloaded data.
        count += data.length;

        // Calculate the current progress.
        final progress = ((count / len) * 100).ceil();

        print(progress.toStringAsFixed(2));

        // Write to file.
        output.add(data);
      }
      await output.close();
    }
    files.add(file);
  }
  {
    final streams = manifest.audioOnly;

    // Get the audio track with the highest bitrate.
    final audio = streams.withHighestBitrate();
    final audioStream = yt.videos.streamsClient.get(audio);

    final file = File(
        path.join(directory.path, '${fileName}.audio.${audio.container.name}'));

    // Track the file download status.
    final len = audio.size.totalBytes;
    if (file.statSync().size != len) {
      // Open the file in writeAppend.
      final output = file.openWrite(mode: FileMode.writeOnlyAppend);

      var count = file.statSync().size;

      // Create the message and set the cursor position.
      final msg = 'Downloading ${video.title}.${audio.container.name}';
      stdout.writeln(msg);

      // Listen for data received.
      await for (final data in audioStream) {
        // Keep track of the current downloaded data.
        count += data.length;

        // Calculate the current progress.
        final progress = ((count / len) * 100).ceil();

        print(progress.toStringAsFixed(2));

        // Write to file.
        output.add(data);
      }
      await output.close();
    }
    files.add(file);
  }
  Process process = await Process.start(
    "ffmpeg",
    [
      "-i",
      files.first.path,
      "-i",
      files.last.path,
      "-c:v",
      "copy",
      "-c:a",
      "aac",
      "-map",
      "0:v:0",
      "-map",
      "1:a:0",
      "${fileName}.mp4",
    ],
  );
  process.stdout.listen(stdout.add);
  process.stderr.listen(stderr.add);
  final exitCode = await process.exitCode;
  if (exitCode != 0) {
    for (final file in files) {
      await file.delete(recursive: true);
    }
  }
  return;
}
