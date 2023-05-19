// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class YoutubeVideoThumbnails extends JsonScheme {
  YoutubeVideoThumbnails(super.rawData);

  static Map get defaultData {
    return {
      "@type": "youtubeVideoThumbnails",
      "low": "https://img.youtube.com/vi/VIUCn3xTzMc/default.jpg",
      "medium": "https://img.youtube.com/vi/VIUCn3xTzMc/mqdefault.jpg",
      "high": "https://img.youtube.com/vi/VIUCn3xTzMc/hqdefault.jpg",
      "max": "https://img.youtube.com/vi/VIUCn3xTzMc/maxresdefault.jpg",
      "standard": "https://img.youtube.com/vi/VIUCn3xTzMc/sddefault.jpg"
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

  String? get low {
    try {
      if (rawData["low"] is String == false) {
        return null;
      }
      return rawData["low"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get medium {
    try {
      if (rawData["medium"] is String == false) {
        return null;
      }
      return rawData["medium"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get high {
    try {
      if (rawData["high"] is String == false) {
        return null;
      }
      return rawData["high"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get max {
    try {
      if (rawData["max"] is String == false) {
        return null;
      }
      return rawData["max"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get standard {
    try {
      if (rawData["standard"] is String == false) {
        return null;
      }
      return rawData["standard"] as String;
    } catch (e) {
      return null;
    }
  }

  static YoutubeVideoThumbnails create({
    String? special_type,
    String? low,
    String? medium,
    String? high,
    String? max,
    String? standard,
  }) {
    YoutubeVideoThumbnails youtubeVideoThumbnails = YoutubeVideoThumbnails({
      "@type": special_type,
      "low": low,
      "medium": medium,
      "high": high,
      "max": max,
      "standard": standard,
    });

    return youtubeVideoThumbnails;
  }
}
