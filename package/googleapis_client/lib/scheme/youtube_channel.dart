// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class YoutubeChannel extends JsonScheme {
  YoutubeChannel(super.rawData);

  static Map get defaultData {
    return {
      "@type": "youtubeChannel",
      "id": "UC928-F8HenjZD1zNdMY42vA",
      "title": "Azkadev",
      "url": "https://www.youtube.com/channel/UC928-F8HenjZD1zNdMY42vA",
      "subscribers_count": 1290,
      "profile_banner":
          "https://yt3.googleusercontent.com/958IlGfFeQhVO9bB62ECmLRo0fhxJN3h6J4L2m91qrZj51LzxJYas23Wk0bngHHqcoQUKTHDOg=w1060-fcrop64=1,00005a57ffffa5a8-k-c0xffffffff-no-nd-rj",
      "profile_picture":
          "https://yt3.googleusercontent.com/dVnF61S2-1uHxCQaYXcUXEYCkX_ZWu2PQwIrtR42o3eYPgOi2_JE9K7-WvUZuCaGRbbMJNMVcw=s900-c-k-c0x00ffffff-no-rj"
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

  String? get id {
    try {
      if (rawData["id"] is String == false) {
        return null;
      }
      return rawData["id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      if (rawData["title"] is String == false) {
        return null;
      }
      return rawData["title"] as String;
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

  int? get subscribers_count {
    try {
      if (rawData["subscribers_count"] is int == false) {
        return null;
      }
      return rawData["subscribers_count"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get profile_banner {
    try {
      if (rawData["profile_banner"] is String == false) {
        return null;
      }
      return rawData["profile_banner"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get profile_picture {
    try {
      if (rawData["profile_picture"] is String == false) {
        return null;
      }
      return rawData["profile_picture"] as String;
    } catch (e) {
      return null;
    }
  }

  static YoutubeChannel create({
    String? special_type,
    String? id,
    String? title,
    String? url,
    int? subscribers_count,
    String? profile_banner,
    String? profile_picture,
  }) {
    YoutubeChannel youtubeChannel = YoutubeChannel({
      "@type": special_type,
      "id": id,
      "title": title,
      "url": url,
      "subscribers_count": subscribers_count,
      "profile_banner": profile_banner,
      "profile_picture": profile_picture,
    });

    return youtubeChannel;
  }
}
