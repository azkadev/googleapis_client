// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class YoutubeChannelThumbnails extends JsonScheme {
  YoutubeChannelThumbnails(super.rawData);

  static Map get defaultData {
    return {
      "@type": "youtubeChannelThumbnails",
      "url":
          "https://yt3.googleusercontent.com/dVnF61S2-1uHxCQaYXcUXEYCkX_ZWu2PQwIrtR42o3eYPgOi2_JE9K7-WvUZuCaGRbbMJNMVcw=s176-c-k-c0x00ffffff-no-rj",
      "height": 176,
      "width": 176
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

  String? get url {
    try {
      if (rawData["url"] is String == false) {
        return null;
      }
      return rawData["url"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get height {
    try {
      if (rawData["height"] is int == false) {
        return null;
      }
      return rawData["height"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get width {
    try {
      if (rawData["width"] is int == false) {
        return null;
      }
      return rawData["width"] as int;
    } catch (e) {
      return null;
    }
  }

  static YoutubeChannelThumbnails create({
    String? special_type,
    String? url,
    int? height,
    int? width,
  }) {
    YoutubeChannelThumbnails youtubeChannelThumbnails =
        YoutubeChannelThumbnails({
      "@type": special_type,
      "url": url,
      "height": height,
      "width": width,
    });

    return youtubeChannelThumbnails;
  }
}
