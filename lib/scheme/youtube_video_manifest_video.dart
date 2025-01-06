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
          "https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661863&ei=B5JpZMrqHOy84t4Pzry18Aw&ip=182.1.86.237&id=o-AKPrabTZA4Z0TPaQHNNIUQv_HN7_aa5Utcx5VrMjbjyt&itag=598&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pcm2cms=yes&pl=22&ctier=SH&initcwndbps=441250&spc=qEK7B_mYqAOyksp5lp_fzSxXohoWXE4&vprv=1&svpuc=1&mime=video%2Fwebm&gir=yes&clen=110089&dur=37.199&lmt=1664677494839255&mt=1684639991&fvip=3&keepalive=yes&fexp=24007246%2C24362685%2C24363391&c=ANDROID&txp=631A224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgAMBXXePunuUH3p1KvvXip59fHD2YkD8UV7cDli0R9KcCIQDa_YqIpt_pia5H3Dn6Adsi8spZuZxQaWvhk4qaZlDGsQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpcm2cms%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhAOb-QmRQK-Vj-KtBPGsb5plzBFbi2ntfU7_e093Oiix1AiBH71kzJW51SuI5hp-RYkUkVAHM6nFORXFtNaxJz6s5EA%3D%3D"
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
