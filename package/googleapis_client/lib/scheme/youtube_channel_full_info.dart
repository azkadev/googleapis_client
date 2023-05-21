// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

import "youtube_channel_thumbnails.dart";
import "youtube_channel_links.dart";


class YoutubeChannelFullInfo extends JsonScheme {

  
  YoutubeChannelFullInfo(super.rawData);
   
  static Map get defaultData {
    return {"@type":"youtubeChannelFullInfo","id":"UC928-F8HenjZD1zNdMY42vA","title":"Azkadev","url":"https://www.youtube.com/channel/UC928-F8HenjZD1zNdMY42vA","subscribers_count":1290,"profile_banner":"https://yt3.googleusercontent.com/958IlGfFeQhVO9bB62ECmLRo0fhxJN3h6J4L2m91qrZj51LzxJYas23Wk0bngHHqcoQUKTHDOg=w1060-fcrop64=1,00005a57ffffa5a8-k-c0xffffffff-no-nd-rj","profile_picture":"https://yt3.googleusercontent.com/dVnF61S2-1uHxCQaYXcUXEYCkX_ZWu2PQwIrtR42o3eYPgOi2_JE9K7-WvUZuCaGRbbMJNMVcw=s900-c-k-c0x00ffffff-no-rj","description":"Hey Dengan AzkaDev Disini.\n\n🔗️ My Social Media:\n1. Youtube: https://youtube.com/@azkadev\n2. Github: https://github.com/azkadev\n3. Telegram:\n     • Channel: https://t.me/azkadev\n     • Bot: https://t.me/azkadevbot\n   \n📣️ About Me:\n• Nama Lengkap: Gibran Alazka \n• Pekerjaan: \n  • Full-Time Dev (  @GALAXEUS    @HexaMinate ,  @EnviVore    @COINLOX   )\n  • Freelancer Remote Developer\n• Bahasa Code: Dart Dan Zig\n• 📄️ Jasa:\n        • Flutter Dev (Android, linux, web only) yang lain gak ada device buat test\n        • Dart Dev (Backend, databse, rest api, payment gateway, dll)\n       • (Bot / Userbot) (Telegram / Whatsapp / instagram / Twitter / Youtube) (Selain telegram client wajib daftar api platform terlebih dahulu)\n","view_count":8956,"join_date":"Jun 20, 2022","country":"Indonesia","thumbnails":[{"@type":"youtubeChannelThumbnails","url":"https://yt3.googleusercontent.com/dVnF61S2-1uHxCQaYXcUXEYCkX_ZWu2PQwIrtR42o3eYPgOi2_JE9K7-WvUZuCaGRbbMJNMVcw=s176-c-k-c0x00ffffff-no-rj","height":176,"width":176},{"@type":"youtubeChannelThumbnails","url":"https://yt3.googleusercontent.com/dVnF61S2-1uHxCQaYXcUXEYCkX_ZWu2PQwIrtR42o3eYPgOi2_JE9K7-WvUZuCaGRbbMJNMVcw=s88-c-k-c0x00ffffff-no-rj","height":88,"width":88},{"@type":"youtubeChannelThumbnails","url":"https://yt3.googleusercontent.com/dVnF61S2-1uHxCQaYXcUXEYCkX_ZWu2PQwIrtR42o3eYPgOi2_JE9K7-WvUZuCaGRbbMJNMVcw=s176-c-k-c0x00ffffff-no-rj","height":176,"width":176}],"channelLinks":[{"@type":"youtubeChannelLinks","title":"Website","url":"https://azkadev.netlify.app/","icon":"https://encrypted-tbn2.gstatic.com/favicon-tbn?q=tbn:ANd9GcRX76DzmMEQBUYSrA9hsWFxyOXNj16cA0ykIv0rO3Bt9RcJ0aZll3MOf6DQ-BQrQQ73lJRU0XekCjJnTEJGbcq8Ql4zlAi5F3KqIcZkjyapLUNuMdOfqlHL"},{"@type":"youtubeChannelLinks","title":"Telegram","url":"https://t.me/azkadevbot","icon":"https://encrypted-tbn0.gstatic.com/favicon-tbn?q=tbn:ANd9GcRDYw8hPwhEf_vwOpBygZb90cVG-xdXCJxKZIoavrp3Uk2LQ3m_34BNsp28Nirtua9yDquNiYft7CuHiwJfEAFhh1OOirQVzfJb"},{"@type":"youtubeChannelLinks","title":"Twitter","url":"https://twitter.com/azka_dev","icon":"https://encrypted-tbn0.gstatic.com/favicon-tbn?q=tbn:ANd9GcTCl87OfLKVJ9rK8xDL2fO43Nn-qwO3MZqhD6Va_y_Dj4NQN5vi_7wfFsqVPVk5OJarybTLaqbvqdn3Oj1nmlMBa_srPR9cF0lTX47Loj-ftw"},{"@type":"youtubeChannelLinks","title":"Website","url":"https://azkadev.netlify.app/","icon":"https://encrypted-tbn2.gstatic.com/favicon-tbn?q=tbn:ANd9GcRX76DzmMEQBUYSrA9hsWFxyOXNj16cA0ykIv0rO3Bt9RcJ0aZll3MOf6DQ-BQrQQ73lJRU0XekCjJnTEJGbcq8Ql4zlAi5F3KqIcZkjyapLUNuMdOfqlHL"}]};
  }

  
  String? get special_type {
    try {
      if (rawData["@type"] is String == false){
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get id {
    try {
      if (rawData["id"] is String == false){
        return null;
      }
      return rawData["id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get title {
    try {
      if (rawData["title"] is String == false){
        return null;
      }
      return rawData["title"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get url {
    try {
      if (rawData["url"] is String == false){
        return null;
      }
      return rawData["url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get subscribers_count {
    try {
      if (rawData["subscribers_count"] is int == false){
        return null;
      }
      return rawData["subscribers_count"] as int;
    } catch (e) {
      return null;
    }
  }


  
  String? get profile_banner {
    try {
      if (rawData["profile_banner"] is String == false){
        return null;
      }
      return rawData["profile_banner"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get profile_picture {
    try {
      if (rawData["profile_picture"] is String == false){
        return null;
      }
      return rawData["profile_picture"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get description {
    try {
      if (rawData["description"] is String == false){
        return null;
      }
      return rawData["description"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get view_count {
    try {
      if (rawData["view_count"] is int == false){
        return null;
      }
      return rawData["view_count"] as int;
    } catch (e) {
      return null;
    }
  }


  
  String? get join_date {
    try {
      if (rawData["join_date"] is String == false){
        return null;
      }
      return rawData["join_date"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get country {
    try {
      if (rawData["country"] is String == false){
        return null;
      }
      return rawData["country"] as String;
    } catch (e) {
      return null;
    }
  }

  
  List<YoutubeChannelThumbnails> get thumbnails {
    try {
      if (rawData["thumbnails"] is List == false){
        return [];
      }
      return (rawData["thumbnails"] as List).map((e) => YoutubeChannelThumbnails(e as Map)).toList().cast<YoutubeChannelThumbnails>();
    } catch (e) {
      return [];
    }
  }

  
  List<YoutubeChannelLinks> get channelLinks {
    try {
      if (rawData["channelLinks"] is List == false){
        return [];
      }
      return (rawData["channelLinks"] as List).map((e) => YoutubeChannelLinks(e as Map)).toList().cast<YoutubeChannelLinks>();
    } catch (e) {
      return [];
    }
  }


  
  static YoutubeChannelFullInfo create({

    String? special_type,
    String? id,
    String? title,
    String? url,
    int? subscribers_count,
    String? profile_banner,
    String? profile_picture,
    String? description,
    int? view_count,
    String? join_date,
    String? country,
      List<YoutubeChannelThumbnails>? thumbnails,
      List<YoutubeChannelLinks>? channelLinks,
})  {
    YoutubeChannelFullInfo youtubeChannelFullInfo = YoutubeChannelFullInfo({
  
      "@type": special_type,
      "id": id,
      "title": title,
      "url": url,
      "subscribers_count": subscribers_count,
      "profile_banner": profile_banner,
      "profile_picture": profile_picture,
      "description": description,
      "view_count": view_count,
      "join_date": join_date,
      "country": country,
      "thumbnails": (thumbnails != null)? thumbnails.map((res) => res.toJson()).toList().cast<Map>(): null,
      "channelLinks": (channelLinks != null)? channelLinks.map((res) => res.toJson()).toList().cast<Map>(): null,


  });


return youtubeChannelFullInfo;

      }
}