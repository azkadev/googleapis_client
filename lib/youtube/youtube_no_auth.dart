// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_string_interpolations

/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: non_constant_identifier_names, deprecated_member_use

import 'dart:async';
import 'dart:io';
 
import 'package:googleapis_client/fork/youtube_explode_dart/youtube_explode_dart.dart';
import 'package:googleapis_client/utils/utils.dart'; 
import "package:googleapis_client/scheme/scheme.dart"
    as googleapis_client_scheme;
import "package:path/path.dart" as path;

class YoutubeNoAuth {
  YoutubeExplode youtubeExplode = YoutubeExplode();
  YoutubeNoAuth();

  Future<googleapis_client_scheme.YoutubeChannel> getChannel({
    required String channel,
  }) async {
    googleapis_client_scheme.YoutubeSchemaText youtubeSchemaText =
        GoogleApisClientUtils.parseTextToYoutube(text: channel);
    if (youtubeSchemaText["@type"] == "error") {
      return googleapis_client_scheme.YoutubeChannel(youtubeSchemaText.rawData);
    }
    Channel channel_result = await () async {
      if (youtubeSchemaText.type == "channel_username") {
        return await youtubeExplode.channels
            .getByUsername(youtubeSchemaText.data);
      } else if (youtubeSchemaText.type == "video") {
        return await youtubeExplode.channels.getByVideo(youtubeSchemaText.data);
      } else {
        try {
          return await youtubeExplode.channels.get(youtubeSchemaText.data);
        } catch (e) {
          return await youtubeExplode.channels
              .getByUsername(youtubeSchemaText.data);
        }
      }
    }.call();
    Map jsonData = {
      "@type": "youtubeChannel",
      "id": channel_result.id.value,
      "title": channel_result.title,
      "url": channel_result.url,
      "subscribers_count": channel_result.subscribersCount,
      "profile_banner": channel_result.bannerUrl,
      "profile_picture": channel_result.logoUrl,
    };

    return googleapis_client_scheme.YoutubeChannel(jsonData);
  }

  Future<googleapis_client_scheme.YoutubeChannel> getChannelByVideo({
    required String video_id,
  }) async {
    Channel channel_result = await () async {
      return await youtubeExplode.channels.getByVideo(video_id);
    }.call();
    Map jsonData = {
      "@type": "youtubeChannel",
      "id": channel_result.id.value,
      "title": channel_result.title,
      "url": channel_result.url,
      "subscribers_count": channel_result.subscribersCount,
      "profile_banner": channel_result.bannerUrl,
      "profile_picture": channel_result.logoUrl,
    };

    return googleapis_client_scheme.YoutubeChannel(jsonData);
  }

  Future<googleapis_client_scheme.YoutubeChannelFullInfo> getChannelFullInfo({
    required String channel,
  }) async {
    googleapis_client_scheme.YoutubeSchemaText youtubeSchemaText =
        GoogleApisClientUtils.parseTextToYoutube(text: channel);
    if (youtubeSchemaText["@type"] == "error") {
      return googleapis_client_scheme.YoutubeChannelFullInfo(
          youtubeSchemaText.rawData);
    }

    googleapis_client_scheme.YoutubeChannel youtubeChannel =
        await getChannel(channel: channel);
    ChannelAbout channel_result = await () async {
      if (youtubeSchemaText.type == "channel_username") {
        return await youtubeExplode.channels
            .getAboutPageByUsername(youtubeSchemaText.data);
      } else {
        return await youtubeExplode.channels
            .getAboutPage(youtubeChannel.id ?? youtubeSchemaText.data);
      }
    }.call();

    Map jsonData = {...youtubeChannel.toJson()};
    jsonData["@type"] = "youtubeChannelFullInfo";
    jsonData["description"] = channel_result.description;
    jsonData["view_count"] = channel_result.viewCount;
    jsonData["join_date"] = channel_result.joinDate;
    jsonData["title"] = channel_result.title;
    jsonData["country"] = channel_result.country;
    jsonData["thumbnails"] = channel_result.thumbnails.map((Thumbnail e) {
      Map jsonDataThumbnails = {
        "@type": "youtubeChannelThumbnails",
        "url": e.url.toString(),
        "height": e.height,
        "width": e.width,
      };
      return jsonDataThumbnails;
    }).toList();
    jsonData["channelLinks"] =
        channel_result.channelLinks.map((ChannelLink channelLink) {
      Map jsonDataLinks = {
        "@type": "youtubeChannelLinks",
        "title": channelLink.title,
        "url": channelLink.url.toString(),
        "icon": channelLink.icon.toString(),
      };
      return jsonDataLinks;
    }).toList();

    return googleapis_client_scheme.YoutubeChannelFullInfo(jsonData);
  }

  Future<googleapis_client_scheme.YoutubeChannelVideos> getChannelVideos({
    required String channel,
  }) async {
    googleapis_client_scheme.YoutubeSchemaText youtubeSchemaText =
        GoogleApisClientUtils.parseTextToYoutube(text: channel);
    if (youtubeSchemaText["@type"] == "error") {
      return googleapis_client_scheme.YoutubeChannelVideos(
          youtubeSchemaText.rawData);
    }

    String channel_id = await () async {
      if (youtubeSchemaText.type != "channel_id") {
        return (await getChannel(channel: channel)).id ?? "";
      }
      return channel;
    }.call();
    final List<Video> videos =
        await youtubeExplode.channels.getUploads(channel_id).toList();

    List<Map> jsonDataVideos = videos.map((Video video) {
      final Map jsonDataVideo = {
        "@type": "youtubeVideo",
        "id": video.id.value,
        "author": video.author,
        "channel_id": video.channelId.value,
        "title": video.title,
        "description": video.description,
        "url": video.url,
        "duration": video.duration?.toString(),
        "date": video.uploadDate?.millisecondsSinceEpoch,
        "has_watch_page": video.hasWatchPage,
        "is_live": video.isLive,
        "keywords": video.keywords.toList(),
        "engagement": {
          "@type": "youtubeVideoEngagement",
          "average_count": video.engagement.avgRating,
          "dislike_count": video.engagement.dislikeCount,
          "like_count": video.engagement.likeCount,
          "view_count": video.engagement.viewCount,
        },
        "thumbnails": {
          "@type": "youtubeVideoThumbnails",
          "low": video.thumbnails.lowResUrl,
          "medium": video.thumbnails.mediumResUrl,
          "high": video.thumbnails.highResUrl,
          "max": video.thumbnails.maxResUrl,
          "standard": video.thumbnails.standardResUrl,
        },
      };
      return jsonDataVideo;
    }).toList();
    final Map jsonData = {
      "@type": "youtubeChannelVideos",
      "count": videos.length,
      "videos": jsonDataVideos,
    };

    return googleapis_client_scheme.YoutubeChannelVideos(jsonData);
  }

  Future<googleapis_client_scheme.YoutubeVideo> getVideo({
    required String video_id,
  }) async {
    googleapis_client_scheme.YoutubeSchemaText youtubeSchemaText =
        GoogleApisClientUtils.parseTextToYoutube(text: video_id);
    if (youtubeSchemaText["@type"] == "error") {
      return googleapis_client_scheme.YoutubeVideo(youtubeSchemaText.rawData);
    }

    if (youtubeSchemaText["type"] != "video") {
      return googleapis_client_scheme.YoutubeVideo(youtubeSchemaText.rawData);
    }

    Video video = await youtubeExplode.videos.get(youtubeSchemaText.data);

    Map jsonDataVideo = {
      "@type": "youtubeVideo",
      "id": video.id.value,
      "author": video.author,
      "channel_id": video.channelId.value,
      "title": video.title,
      "description": video.description,
      "url": video.url,
      "duration": video.duration?.toString(),
      "date": video.uploadDate?.millisecondsSinceEpoch,
      "has_watch_page": video.hasWatchPage,
      "is_live": video.isLive,
      "keywords": video.keywords.toList(),
      "engagement": {
        "@type": "youtubeVideoEngagement",
        "average_count": video.engagement.avgRating,
        "dislike_count": video.engagement.dislikeCount,
        "like_count": video.engagement.likeCount,
        "view_count": video.engagement.viewCount,
      },
      "thumbnails": {
        "@type": "youtubeVideoThumbnails",
        "low": video.thumbnails.lowResUrl,
        "medium": video.thumbnails.mediumResUrl,
        "high": video.thumbnails.highResUrl,
        "max": video.thumbnails.maxResUrl,
        "standard": video.thumbnails.standardResUrl,
      },
    };

    return googleapis_client_scheme.YoutubeVideo(jsonDataVideo);
  }

  Future<googleapis_client_scheme.YoutubeVideoComments> getVideoComments({
    required String video_id,
  }) async {
    googleapis_client_scheme.YoutubeSchemaText youtubeSchemaText =
        GoogleApisClientUtils.parseTextToYoutube(text: video_id);
    if (youtubeSchemaText["@type"] == "error") {
      return googleapis_client_scheme.YoutubeVideoComments(
          youtubeSchemaText.rawData);
    }

    if (youtubeSchemaText["type"] == "channel_username") {
      return googleapis_client_scheme.YoutubeVideoComments(
          youtubeSchemaText.rawData);
    }

    Video video = await youtubeExplode.videos.get(youtubeSchemaText.data);

    CommentsList? commentsList =
        await youtubeExplode.videos.comments.getComments(video);
    if (commentsList == null) {
      Map jsonDataVideo = {
        "@type": "youtubeVideoComments",
        "count": 0,
        "comments": []
      };
      return googleapis_client_scheme.YoutubeVideoComments(jsonDataVideo);
    }
    Map jsonDataVideo = {
      "@type": "youtubeVideoComments",
      "count": commentsList.totalLength,
      "comments": commentsList.toList().map((Comment comment) {
        Map jsonDataVideoComment = {
          "@type": "youtubeVideoComment",
          "author": comment.author,
          "channel_id": comment.channelId.value,
          "date": comment.publishedTime,
          "is_hearted": comment.isHearted,
          "like_count": comment.likeCount,
          "reply_count": comment.replyCount,
          "text": comment.text,
        };

        return jsonDataVideoComment;
      }).toList(),
    };

    return googleapis_client_scheme.YoutubeVideoComments(jsonDataVideo);
  }

  Future<googleapis_client_scheme.YoutubeSearchSuggestions>
      getQuerySuggestions({
    required String query,
  }) async {
    List<String> suggestions =
        await youtubeExplode.search.getQuerySuggestions(query);
    Map jsonDataVideo = {
      "@type": "youtubeSearchSuggestions",
      "count": suggestions.length,
      "suggestions": suggestions,
    };

    return googleapis_client_scheme.YoutubeSearchSuggestions(jsonDataVideo);
  }

  Future<googleapis_client_scheme.YoutubeSearchVideos> search({
    required String query,
  }) async {
    VideoSearchList videoSearchList = await youtubeExplode.search.search(query);

    List<Map> jsonDataVideos = videoSearchList.map((Video video) {
      Map jsonDataVideo = {
        "@type": "youtubeVideo",
        "id": video.id.value,
        "author": video.author,
        "channel_id": video.channelId.value,
        "title": video.title,
        "description": video.description,
        "url": video.url,
        "duration": video.duration?.toString(),
        "date": video.uploadDate?.millisecondsSinceEpoch,
        "has_watch_page": video.hasWatchPage,
        "is_live": video.isLive,
        "keywords": video.keywords.toList(),
        "engagement": {
          "@type": "youtubeVideoEngagement",
          "average_count": video.engagement.avgRating,
          "dislike_count": video.engagement.dislikeCount,
          "like_count": video.engagement.likeCount,
          "view_count": video.engagement.viewCount,
        },
        "thumbnails": {
          "@type": "youtubeVideoThumbnails",
          "low": video.thumbnails.lowResUrl,
          "medium": video.thumbnails.mediumResUrl,
          "high": video.thumbnails.highResUrl,
          "max": video.thumbnails.maxResUrl,
          "standard": video.thumbnails.standardResUrl,
        },
      };
      return jsonDataVideo;
    }).toList();
    Map jsonData = {
      "@type": "youtubeSearchVideos",
      "count": videoSearchList.length,
      "videos": jsonDataVideos,
    };

    return googleapis_client_scheme.YoutubeSearchVideos(jsonData);
  }

  Future<googleapis_client_scheme.YoutubeVideoManifest> getVideoManifest({
    required String video_id,
  }) async {
    googleapis_client_scheme.YoutubeSchemaText youtubeSchemaText =
        GoogleApisClientUtils.parseTextToYoutube(text: video_id);
    if (youtubeSchemaText["@type"] == "error") {
      return googleapis_client_scheme.YoutubeVideoManifest(
          youtubeSchemaText.rawData);
    }

    if (youtubeSchemaText["type"] == "channel_username") {
      return googleapis_client_scheme.YoutubeVideoManifest(
          youtubeSchemaText.rawData);
    }

    StreamManifest streamManifest =
        await youtubeExplode.videos.streams.getManifest(youtubeSchemaText.data);
    List<MuxedStreamInfo> muxed_stream = streamManifest.muxed.toList();
    List<AudioStreamInfo> audios_stream = streamManifest.audio.toList();
    List<VideoStreamInfo> videos_stream = streamManifest.video.toList();
    List<StreamInfo> stream_stream = streamManifest.streams.toList();

    List<Map> jsonAudios = audios_stream.map((AudioStreamInfo audioStreamInfo) {
      Map jsonData = {
        "@type": "youtubeVideoManifestAudio",
        "video_codec": audioStreamInfo.audioCodec,
        "bitrate": audioStreamInfo.bitrate.bitsPerSecond,
        "mime_type": audioStreamInfo.codec.mimeType,
        "container_name": audioStreamInfo.container.name,
        "is_throttled": audioStreamInfo.isThrottled,
        "quality": audioStreamInfo.qualityLabel,
        "size": audioStreamInfo.size.totalBytes,
        "tag": audioStreamInfo.tag,
        "url": audioStreamInfo.url.toString(),
      };

      return jsonData;
    }).toList();

    List<Map> jsonMuxeds = muxed_stream.map((MuxedStreamInfo muxedStreamInfo) {
      // muxedStreamInfo.videoResolution.
      Map jsonData = {
        "@type": "youtubeVideoManifestMuxed",
        "audio_codec": muxedStreamInfo.audioCodec,
        "framerate": muxedStreamInfo.framerate.framesPerSecond,
        "video_codec": muxedStreamInfo.videoCodec,
        "video_quality": muxedStreamInfo.videoQuality.name,
        "height": muxedStreamInfo.videoResolution.height,
        "width": muxedStreamInfo.videoResolution.width,
        "bitrate": muxedStreamInfo.bitrate.bitsPerSecond,
        "mime_type": muxedStreamInfo.codec.mimeType,
        "container_name": muxedStreamInfo.container.name,
        "is_throttled": muxedStreamInfo.isThrottled,
        "quality": muxedStreamInfo.qualityLabel,
        "size": muxedStreamInfo.size.totalBytes,
        "tag": muxedStreamInfo.tag,
        "url": muxedStreamInfo.url.toString(),
      };

      return jsonData;
    }).toList();

    List<Map> jsonVideos = videos_stream.map((VideoStreamInfo videoStreamInfo) {
      Map jsonData = {
        "@type": "youtubeVideoManifestVideo",
        "framerate": videoStreamInfo.framerate.framesPerSecond,
        "video_codec": videoStreamInfo.videoCodec,
        "video_quality": videoStreamInfo.videoQuality.name,
        "height": videoStreamInfo.videoResolution.height,
        "width": videoStreamInfo.videoResolution.width,
        "bitrate": videoStreamInfo.bitrate.bitsPerSecond,
        "mime_type": videoStreamInfo.codec.mimeType,
        "container_name": videoStreamInfo.container.name,
        "is_throttled": videoStreamInfo.isThrottled,
        "quality": videoStreamInfo.qualityLabel,
        "size": videoStreamInfo.size.totalBytes,
        "tag": videoStreamInfo.tag,
        "url": videoStreamInfo.url.toString(),
      };

      return jsonData;
    }).toList();

    List<Map> jsonStreams = stream_stream.map((StreamInfo streamInfo) {
      Map jsonData = {
        "@type": "youtubeVideoManifestStream",
        "bitrate": streamInfo.bitrate.bitsPerSecond,
        "mime_type": streamInfo.codec.mimeType,
        "container_name": streamInfo.container.name,
        "is_throttled": streamInfo.isThrottled,
        "quality": streamInfo.qualityLabel,
        "size": streamInfo.size.totalBytes,
        "tag": streamInfo.tag,
        "url": streamInfo.url.toString(),
      };
      return jsonData;
    }).toList();

    Map jsonData = {
      "@type": "youtubeVideoManifest",
      "audios": jsonAudios,
      "videos": jsonVideos,
      "muxeds": jsonMuxeds,
      "streams": jsonStreams,
    };

    return googleapis_client_scheme.YoutubeVideoManifest(jsonData);
  }

  final List<YoutubeDownloaderTask> youtubeDownloaderTasks = [];
  downloadAsAudio() {}

  downloadAsVideo() {}

  Future<YoutubeVideoDownloadDetail> getDownloadDetail({
    required Directory directory,
    required String youtubeUrl,
    required String? output,
    required bool isAudioOnly,
  }) async {
    final manifest =
        await youtubeExplode.videos.streamsClient.getManifest(youtubeUrl);
    final audioTotalBytes =
        manifest.audioOnly.withHighestBitrate().size.totalBytes;
    if (isAudioOnly) {
      return YoutubeVideoDownloadDetail(
        totalSize: audioTotalBytes,
        streamManifest: manifest,
      );
    } else {
      return YoutubeVideoDownloadDetail(
        totalSize: manifest.videoOnly.withHighestBitrate().size.totalBytes +
            audioTotalBytes,
        streamManifest: manifest,
      );
    }
  }

  Stream download({
    required Directory directoryDownload,
    required Directory directoryTemporary,
    required String youtubeUrl,
    required String? output,
    required bool isAudioOnly,
    required YoutubeVideoDownloadDetail youtubeVideoDownloadDetail,
  }) async* {
    final video = await youtubeExplode.videos.get(youtubeUrl);

    final streamManifest = youtubeVideoDownloadDetail.streamManifest;
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

    final File fileOutput = File(path.join(
      directoryDownload.path,
      (output ??
              "${((isAudioOnly == true) ? "${video.author}-${fileName}.mp3" : "${fileName}.mp4")}")
          .replaceAll(RegExp("([ ]+)"), "_"),
    ));
    final List<File> files = [];
    if (isAudioOnly == false) {
      {
        final streams = streamManifest.videoOnly;

        final videoStreamInfo = streams.withHighestBitrate();
        final videoStream =
            youtubeExplode.videos.streamsClient.get(videoStreamInfo);
        final file = File(path.join(directoryTemporary.path,
            '${fileName}.video.${videoStreamInfo.container.name}'));

        // Track the file download status.
        final len = videoStreamInfo.size.totalBytes;

        if (file.statSync().size != len) {
          if (file.existsSync()) {
            file.deleteSync(recursive: true);
          }
          await file.create(recursive: true);
          // Open the file in writeAppend.
          final output = file.openWrite(mode: FileMode.writeOnlyAppend);

          int count = file.statSync().size;

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
    }
    {
      final streams = streamManifest.audioOnly;

      // Get the audio track with the highest bitrate.
      final audio = streams.withHighestBitrate();
      final audioStream = youtubeExplode.videos.streamsClient.get(audio);

      final file = File(path.join(directoryTemporary.path,
          '${fileName}.audio.${audio.container.name}'));
      // Track the file download status.
      final len = audio.size.totalBytes;
      if (file.statSync().size != len) {
        await file.create(recursive: true);
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
    final Process process = await Process.start(
      "ffmpeg",
      [
        if (isAudioOnly) ...[
          "-i",
          files.first.path,
          "-vn",
          "-ar",
          "44100",
          "-ac",
          "2",
          "-b:a",
          "192k",
          fileOutput.path,
        ] else ...[
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
          fileOutput.path,
        ],
      ],
    );
    process.stdout.listen(stdout.add);
    process.stderr.listen(stderr.add);
    final exitCode = await process.exitCode;
    if (exitCode == 0) {
      for (final file in files) {
        await file.delete(recursive: true);
      }
    }
    return;
  }
}

class YoutubeVideoDownloadDetail {
  final StreamManifest streamManifest;
  final int totalSize;
  const YoutubeVideoDownloadDetail({
    required this.streamManifest,
    required this.totalSize,
  });
}

class YoutubeDownloaderTasks {
  YoutubeDownloaderTasks();
}

class YoutubeDownloaderTask {
  final YoutubeVideoDownloadDetail youtubeVideoDownloadDetail;

  YoutubeDownloaderTask({
    required this.youtubeVideoDownloadDetail,
  });

  retry({
    required YoutubeNoAuth youtubeNoAuth,
  }) {
    youtubeNoAuth;
  }

  Future<void> cancel() async {}
  Future<void> resume() async {}

  Future<void> pause() async {}
}
