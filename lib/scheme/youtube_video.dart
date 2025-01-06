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

import "youtube_video_engagement.dart";
import "youtube_video_thumbnails.dart";

class YoutubeVideo extends JsonScheme {
  YoutubeVideo(super.rawData);

  static Map get defaultData {
    return {
      "@type": "youtubeVideo",
      "id": "VIUCn3xTzMc",
      "author": "Fadz Kuruunii Al Muttaqin",
      "channel_id": "UCOqCFbpjc_XS6GJSmyoWs2Q",
      "title": "CARA MEMBUAT USERBOT TELEGRAM TERBARU VIA WEB | ALBY-USERBOT",
      "description":
          "CARA MEMBUAT USERBOT TELEGRAM TERBARU VIA WEB | ALBY USERBOT Karena banyaknya keresahan warga Telegram ...",
      "url": "https://www.youtube.com/watch?v=VIUCn3xTzMc",
      "duration": "0:31:30.000000",
      "date": 1666368661234,
      "has_watch_page": false,
      "is_live": false,
      "keywords": [],
      "engagement": {
        "@type": "youtubeVideoEngagement",
        "average_count": -1,
        "dislike_count": null,
        "like_count": null,
        "view_count": 3790
      },
      "thumbnails": {
        "@type": "youtubeVideoThumbnails",
        "low": "https://img.youtube.com/vi/VIUCn3xTzMc/default.jpg",
        "medium": "https://img.youtube.com/vi/VIUCn3xTzMc/mqdefault.jpg",
        "high": "https://img.youtube.com/vi/VIUCn3xTzMc/hqdefault.jpg",
        "max": "https://img.youtube.com/vi/VIUCn3xTzMc/maxresdefault.jpg",
        "standard": "https://img.youtube.com/vi/VIUCn3xTzMc/sddefault.jpg"
      }
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

  String? get description {
    try {
      if (rawData["description"] is String == false) {
        return null;
      }
      return rawData["description"] as String;
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

  String? get duration {
    try {
      if (rawData["duration"] is String == false) {
        return null;
      }
      return rawData["duration"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      if (rawData["date"] is int == false) {
        return null;
      }
      return rawData["date"] as int;
    } catch (e) {
      return null;
    }
  }

  bool? get has_watch_page {
    try {
      if (rawData["has_watch_page"] is bool == false) {
        return null;
      }
      return rawData["has_watch_page"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_live {
    try {
      if (rawData["is_live"] is bool == false) {
        return null;
      }
      return rawData["is_live"] as bool;
    } catch (e) {
      return null;
    }
  }

  List<Object> get keywords {
    try {
      if (rawData["keywords"] is List == false) {
        return [];
      }
      return (rawData["keywords"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  YoutubeVideoEngagement get engagement {
    try {
      if (rawData["engagement"] is Map == false) {
        return YoutubeVideoEngagement({});
      }
      return YoutubeVideoEngagement(rawData["engagement"] as Map);
    } catch (e) {
      return YoutubeVideoEngagement({});
    }
  }

  YoutubeVideoThumbnails get thumbnails {
    try {
      if (rawData["thumbnails"] is Map == false) {
        return YoutubeVideoThumbnails({});
      }
      return YoutubeVideoThumbnails(rawData["thumbnails"] as Map);
    } catch (e) {
      return YoutubeVideoThumbnails({});
    }
  }

  static YoutubeVideo create({
    String? special_type,
    String? id,
    String? author,
    String? channel_id,
    String? title,
    String? description,
    String? url,
    String? duration,
    int? date,
    bool? has_watch_page,
    bool? is_live,
    List<Object>? keywords,
    YoutubeVideoEngagement? engagement,
    YoutubeVideoThumbnails? thumbnails,
  }) {
    YoutubeVideo youtubeVideo = YoutubeVideo({
      "@type": special_type,
      "id": id,
      "author": author,
      "channel_id": channel_id,
      "title": title,
      "description": description,
      "url": url,
      "duration": duration,
      "date": date,
      "has_watch_page": has_watch_page,
      "is_live": is_live,
      "keywords": keywords,
      "engagement": (engagement != null) ? engagement.toJson() : null,
      "thumbnails": (thumbnails != null) ? thumbnails.toJson() : null,
    });

    return youtubeVideo;
  }
}
