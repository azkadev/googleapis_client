// ignore_for_file: non_constant_identifier_names

import 'package:googleapis_client/utils/utils.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import "package:googleapis_client/scheme/scheme.dart" as googleapis_client_scheme;

class YoutubeNoAuth {
  YoutubeExplode youtubeExplode = YoutubeExplode();
  YoutubeNoAuth();

  Future<googleapis_client_scheme.YoutubeChannel> getChannel({
    required String channel,
  }) async {
    googleapis_client_scheme.YoutubeSchemaText youtubeSchemaText = GoogleApisClientUtils.parseTextToYoutube(text: channel);
    if (youtubeSchemaText["@type"] == "error") {
      return googleapis_client_scheme.YoutubeChannel(youtubeSchemaText.rawData);
    }
    Channel channel_result = await () async {
      if (youtubeSchemaText.type == "channel_username") {
        return await youtubeExplode.channels.getByUsername(youtubeSchemaText.data);
      } else if (youtubeSchemaText.type == "video") {
        return await youtubeExplode.channels.getByVideo(youtubeSchemaText.data);
      } else {
        try {
          return await youtubeExplode.channels.get(youtubeSchemaText.data);
        } catch (e) {
          return await youtubeExplode.channels.getByUsername(youtubeSchemaText.data);
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
    googleapis_client_scheme.YoutubeSchemaText youtubeSchemaText = GoogleApisClientUtils.parseTextToYoutube(text: channel);
    if (youtubeSchemaText["@type"] == "error") {
      return googleapis_client_scheme.YoutubeChannelFullInfo(youtubeSchemaText.rawData);
    }

    googleapis_client_scheme.YoutubeChannel youtubeChannel = await getChannel(channel: channel);
    ChannelAbout channel_result = await () async {
      if (youtubeSchemaText.type == "channel_username") {
        return await youtubeExplode.channels.getAboutPageByUsername(youtubeSchemaText.data);
      } else {
        return await youtubeExplode.channels.getAboutPage(youtubeChannel.id ?? youtubeSchemaText.data);
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
    jsonData["channelLinks"] = channel_result.channelLinks.map((ChannelLink channelLink) {
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
    googleapis_client_scheme.YoutubeSchemaText youtubeSchemaText = GoogleApisClientUtils.parseTextToYoutube(text: channel);
    if (youtubeSchemaText["@type"] == "error") {
      return googleapis_client_scheme.YoutubeChannelVideos(youtubeSchemaText.rawData);
    }

    String channel_id = await () async {
      if (youtubeSchemaText.type != "channel_id") {
        return (await getChannel(channel: channel)).id ?? "";
      }
      return channel;
    }.call();
    List<Video> videos = await youtubeExplode.channels.getUploads(channel_id).toList();

    List<Map> jsonDataVideos = videos.map((Video video) {
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
      "@type": "youtubeChannelVideos",
      "count": videos.length,
      "videos": jsonDataVideos,
    };

    return googleapis_client_scheme.YoutubeChannelVideos(jsonData);
  }

  Future<googleapis_client_scheme.YoutubeVideo> getVideo({
    required String video_id,
  }) async {
    googleapis_client_scheme.YoutubeSchemaText youtubeSchemaText = GoogleApisClientUtils.parseTextToYoutube(text: video_id);
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
    googleapis_client_scheme.YoutubeSchemaText youtubeSchemaText = GoogleApisClientUtils.parseTextToYoutube(text: video_id);
    if (youtubeSchemaText["@type"] == "error") {
      return googleapis_client_scheme.YoutubeVideoComments(youtubeSchemaText.rawData);
    }

    if (youtubeSchemaText["type"] == "channel_username") {
      return googleapis_client_scheme.YoutubeVideoComments(youtubeSchemaText.rawData);
    }

    Video video = await youtubeExplode.videos.get(youtubeSchemaText.data);

    CommentsList? commentsList = await youtubeExplode.videos.comments.getComments(video);
    if (commentsList == null) {
      Map jsonDataVideo = {"@type": "youtubeVideoComments", "count": 0, "comments": []};
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

  Future<googleapis_client_scheme.YoutubeSearchSuggestions> getQuerySuggestions({
    required String query,
  }) async {
    List<String> suggestions = await youtubeExplode.search.getQuerySuggestions(query);
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

  Future<googleapis_client_scheme.YoutubeSearchVideos> getVideoManifest({
    required String video_id,
  }) async {
    googleapis_client_scheme.YoutubeSchemaText youtubeSchemaText = GoogleApisClientUtils.parseTextToYoutube(text: video_id);
    if (youtubeSchemaText["@type"] == "error") {
      return googleapis_client_scheme.YoutubeSearchVideos(youtubeSchemaText.rawData);
    }

    if (youtubeSchemaText["type"] == "channel_username") {
      return googleapis_client_scheme.YoutubeSearchVideos(youtubeSchemaText.rawData);
    }
 
    StreamManifest streamManifest = await youtubeExplode.videos.streams.getManifest(youtubeSchemaText.data);
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
      "streams": jsonStreams,
    };

    return googleapis_client_scheme.YoutubeSearchVideos(jsonData);
  }
}
