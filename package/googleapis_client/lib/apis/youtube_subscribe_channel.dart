// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class YoutubeSubscribeChannel extends JsonApis {

  
  YoutubeSubscribeChannel(super.rawData);
   
  static Map get defaultData {
    return {"@type":"youtubeSubscribeChannel","@client_channel":"","channel_id":"@azkadev"};
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


  
  String? get special_client_channel {
    try {
      if (rawData["@client_channel"] is String == false){
        return null;
      }
      return rawData["@client_channel"] as String;
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


  
  static YoutubeSubscribeChannel create({

    String? special_type,
    String? special_client_channel,
    String? channel_id,
})  {
    YoutubeSubscribeChannel youtubeSubscribeChannel = YoutubeSubscribeChannel({
  
      "@type": special_type,
      "@client_channel": special_client_channel,
      "channel_id": channel_id,


  });


return youtubeSubscribeChannel;

      }
}