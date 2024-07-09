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
