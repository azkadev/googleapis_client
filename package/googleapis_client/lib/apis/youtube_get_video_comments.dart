// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class YoutubeGetVideoComments extends JsonApis {
  YoutubeGetVideoComments(super.rawData);

  static Map get defaultData {
    return {"@type": "youtubeGetVideoComments", "video_id": ""};
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

  String? get video_id {
    try {
      if (rawData["video_id"] is String == false) {
        return null;
      }
      return rawData["video_id"] as String;
    } catch (e) {
      return null;
    }
  }

  static YoutubeGetVideoComments create({
    String? special_type,
    String? video_id,
  }) {
    YoutubeGetVideoComments youtubeGetVideoComments = YoutubeGetVideoComments({
      "@type": special_type,
      "video_id": video_id,
    });

    return youtubeGetVideoComments;
  }
}
