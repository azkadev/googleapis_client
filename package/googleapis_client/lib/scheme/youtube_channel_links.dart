// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class YoutubeChannelLinks extends JsonScheme {

  
  YoutubeChannelLinks(super.rawData);
   
  static Map get defaultData {
    return {"@type":"youtubeChannelLinks","title":"Website","url":"https://azkadev.netlify.app/","icon":"https://encrypted-tbn2.gstatic.com/favicon-tbn?q=tbn:ANd9GcRX76DzmMEQBUYSrA9hsWFxyOXNj16cA0ykIv0rO3Bt9RcJ0aZll3MOf6DQ-BQrQQ73lJRU0XekCjJnTEJGbcq8Ql4zlAi5F3KqIcZkjyapLUNuMdOfqlHL"};
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


  
  String? get icon {
    try {
      if (rawData["icon"] is String == false){
        return null;
      }
      return rawData["icon"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static YoutubeChannelLinks create({

    String? special_type,
    String? title,
    String? url,
    String? icon,
})  {
    YoutubeChannelLinks youtubeChannelLinks = YoutubeChannelLinks({
  
      "@type": special_type,
      "title": title,
      "url": url,
      "icon": icon,


  });


return youtubeChannelLinks;

      }
}