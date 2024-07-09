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
