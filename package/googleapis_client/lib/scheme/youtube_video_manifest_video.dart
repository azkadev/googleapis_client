// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class YoutubeVideoManifestVideo extends JsonScheme {
  YoutubeVideoManifestVideo(super.rawData);

  static Map get defaultData {
    return {
      "@type": "youtubeVideoManifestVideo",
      "framerate": 15,
      "video_codec": "vp9",
      "video_quality": "low144",
      "height": 256,
      "width": 116,
      "bitrate": 28391,
      "mime_type": "video/webm",
      "container_name": "webm",
      "is_throttled": true,
      "quality": "144p",
      "size": 110089,
      "tag": 598,
      "url":
          "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661218&ei=go9pZOeiMNfA4t4P7ZOV8Aw&ip=114.125.94.55&id=o-ABz8KwdlAJBsYlZSb4GX1Cdl21a_yHjkeoEq7qyRAlYS&itag=598&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pl=22&ctier=SH&initcwndbps=470000&spc=qEK7ByEx1EO6hYlGvlce0LFroaWZ6hA&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=110089&dur=37.199&lmt=1664677494839255&mt=1684639275&fvip=3&keepalive=yes&fexp=24007246&beids=24350017&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAKm6fEPLeAeXLpRBnpEg1Kd24N9fQ_S2p71sKDt6m4SbAiB6zr9yrTM3vmUjq4bUmKPq3eeIXFkeQF1q6fruORKPdw%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhANvWRpFIky2tSQreabyvSwwHe8NTWMWe63iIwYV1FPrfAiBIufwo6Tvazl8mMEjcsfoUG3JYH862dq0IsSzwzPPk8w%3D%3D"
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

  int? get framerate {
    try {
      if (rawData["framerate"] is int == false) {
        return null;
      }
      return rawData["framerate"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get video_codec {
    try {
      if (rawData["video_codec"] is String == false) {
        return null;
      }
      return rawData["video_codec"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get video_quality {
    try {
      if (rawData["video_quality"] is String == false) {
        return null;
      }
      return rawData["video_quality"] as String;
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

  int? get bitrate {
    try {
      if (rawData["bitrate"] is int == false) {
        return null;
      }
      return rawData["bitrate"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get mime_type {
    try {
      if (rawData["mime_type"] is String == false) {
        return null;
      }
      return rawData["mime_type"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get container_name {
    try {
      if (rawData["container_name"] is String == false) {
        return null;
      }
      return rawData["container_name"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get is_throttled {
    try {
      if (rawData["is_throttled"] is bool == false) {
        return null;
      }
      return rawData["is_throttled"] as bool;
    } catch (e) {
      return null;
    }
  }

  String? get quality {
    try {
      if (rawData["quality"] is String == false) {
        return null;
      }
      return rawData["quality"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get size {
    try {
      if (rawData["size"] is int == false) {
        return null;
      }
      return rawData["size"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get tag {
    try {
      if (rawData["tag"] is int == false) {
        return null;
      }
      return rawData["tag"] as int;
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

  static YoutubeVideoManifestVideo create({
    String? special_type,
    int? framerate,
    String? video_codec,
    String? video_quality,
    int? height,
    int? width,
    int? bitrate,
    String? mime_type,
    String? container_name,
    bool? is_throttled,
    String? quality,
    int? size,
    int? tag,
    String? url,
  }) {
    YoutubeVideoManifestVideo youtubeVideoManifestVideo =
        YoutubeVideoManifestVideo({
      "@type": special_type,
      "framerate": framerate,
      "video_codec": video_codec,
      "video_quality": video_quality,
      "height": height,
      "width": width,
      "bitrate": bitrate,
      "mime_type": mime_type,
      "container_name": container_name,
      "is_throttled": is_throttled,
      "quality": quality,
      "size": size,
      "tag": tag,
      "url": url,
    });

    return youtubeVideoManifestVideo;
  }
}
