// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class YoutubeVideoComment extends JsonScheme {
  YoutubeVideoComment(super.rawData);

  static Map get defaultData {
    return {
      "@type": "youtubeVideoComment",
      "author": "@pappurock1256",
      "channel_id": "UCqPf8T96Ry-mTI_1q2gJz-g",
      "date": "2 days ago",
      "is_hearted": false,
      "like_count": 1,
      "reply_count": 0,
      "text": "Ii 7 in"
    };
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get author {
    try {
      if (rawData["author"] is String == false) {
        return null;
      }
      return rawData["author"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get channel_id {
    try {
      if (rawData["channel_id"] is String == false) {
        return null;
      }
      return rawData["channel_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get date {
    try {
      if (rawData["date"] is String == false) {
        return null;
      }
      return rawData["date"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get is_hearted {
    try {
      if (rawData["is_hearted"] is bool == false) {
        return null;
      }
      return rawData["is_hearted"] as bool;
    } catch (e) {
      return null;
    }
  }

  int? get like_count {
    try {
      if (rawData["like_count"] is int == false) {
        return null;
      }
      return rawData["like_count"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get reply_count {
    try {
      if (rawData["reply_count"] is int == false) {
        return null;
      }
      return rawData["reply_count"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      if (rawData["text"] is String == false) {
        return null;
      }
      return rawData["text"] as String;
    } catch (e) {
      return null;
    }
  }

  static YoutubeVideoComment create({
    String? special_type,
    String? author,
    String? channel_id,
    String? date,
    bool? is_hearted,
    int? like_count,
    int? reply_count,
    String? text,
  }) {
    YoutubeVideoComment youtubeVideoComment = YoutubeVideoComment({
      "@type": special_type,
      "author": author,
      "channel_id": channel_id,
      "date": date,
      "is_hearted": is_hearted,
      "like_count": like_count,
      "reply_count": reply_count,
      "text": text,
    });

    return youtubeVideoComment;
  }
}
