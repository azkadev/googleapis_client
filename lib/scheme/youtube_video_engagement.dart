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

class YoutubeVideoEngagement extends JsonScheme {
  YoutubeVideoEngagement(super.rawData);

  static Map get defaultData {
    return {
      "@type": "youtubeVideoEngagement",
      "average_count": -1,
      "dislike_count": null,
      "like_count": null,
      "view_count": 3790
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

  int? get average_count {
    try {
      if (rawData["average_count"] is int == false) {
        return null;
      }
      return rawData["average_count"] as int;
    } catch (e) {
      return null;
    }
  }

  Object? get dislike_count {
    try {
      if (rawData["dislike_count"] is Object == false) {
        return null;
      }
      return rawData["dislike_count"] as Object;
    } catch (e) {
      return null;
    }
  }

  Object? get like_count {
    try {
      if (rawData["like_count"] is Object == false) {
        return null;
      }
      return rawData["like_count"] as Object;
    } catch (e) {
      return null;
    }
  }

  int? get view_count {
    try {
      if (rawData["view_count"] is int == false) {
        return null;
      }
      return rawData["view_count"] as int;
    } catch (e) {
      return null;
    }
  }

  static YoutubeVideoEngagement create({
    String? special_type,
    int? average_count,
    Object? dislike_count,
    Object? like_count,
    int? view_count,
  }) {
    YoutubeVideoEngagement youtubeVideoEngagement = YoutubeVideoEngagement({
      "@type": special_type,
      "average_count": average_count,
      "dislike_count": dislike_count,
      "like_count": like_count,
      "view_count": view_count,
    });

    return youtubeVideoEngagement;
  }
}
