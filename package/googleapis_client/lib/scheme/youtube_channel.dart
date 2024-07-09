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
