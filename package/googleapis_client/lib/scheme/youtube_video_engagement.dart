// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class YoutubeVideoEngagement extends JsonScheme {

  
  YoutubeVideoEngagement(super.rawData);
   
  static Map get defaultData {
    return {"@type":"youtubeVideoEngagement","average_count":-1,"dislike_count":null,"like_count":null,"view_count":3790};
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


  
  int? get average_count {
    try {
      if (rawData["average_count"] is int == false){
        return null;
      }
      return rawData["average_count"] as int;
    } catch (e) {
      return null;
    }
  }


  
  Object? get dislike_count {
    try {
      if (rawData["dislike_count"] is Object == false){
        return null;
      }
      return rawData["dislike_count"] as Object;
    } catch (e) {
      return null;
    }
  }


  
  Object? get like_count {
    try {
      if (rawData["like_count"] is Object == false){
        return null;
      }
      return rawData["like_count"] as Object;
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


  
  static YoutubeVideoEngagement create({

    String? special_type,
    int? average_count,
    Object? dislike_count,
    Object? like_count,
    int? view_count,
})  {
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