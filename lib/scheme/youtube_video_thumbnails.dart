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
