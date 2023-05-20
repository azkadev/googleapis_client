// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class YoutubeGetChannelVideo extends JsonApis {

  
  YoutubeGetChannelVideo(super.rawData);
   
  static Map get defaultData {
    return {"@type":"youtubeGetChannelVideo","channel_id":"@azkadev"};
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


  
  String? get channel_id {
    try {
      if (rawData["channel_id"] is String == false){
        return null;
      }
      return rawData["channel_id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static YoutubeGetChannelVideo create({

    String? special_type,
    String? channel_id,
})  {
    YoutubeGetChannelVideo youtubeGetChannelVideo = YoutubeGetChannelVideo({
  
      "@type": special_type,
      "channel_id": channel_id,


  });


return youtubeGetChannelVideo;

      }
}