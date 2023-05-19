// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

import "youtube_video_comment.dart";


class YoutubeVideoComments extends JsonScheme {

  
  YoutubeVideoComments(super.rawData);
   
  static Map get defaultData {
    return {"@type":"youtubeVideoComments","count":2,"comments":[{"@type":"youtubeVideoComment","author":"@pappurock1256","channel_id":"UCqPf8T96Ry-mTI_1q2gJz-g","date":"2 days ago","is_hearted":false,"like_count":1,"reply_count":0,"text":"Ii 7 in"},{"@type":"youtubeVideoComment","author":"@pappurock1256","channel_id":"UCqPf8T96Ry-mTI_1q2gJz-g","date":"2 days ago","is_hearted":false,"like_count":1,"reply_count":0,"text":"Ii 7 in"}]};
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


  
  int? get count {
    try {
      if (rawData["count"] is int == false){
        return null;
      }
      return rawData["count"] as int;
    } catch (e) {
      return null;
    }
  }

  
  List<YoutubeVideoComment> get comments {
    try {
      if (rawData["comments"] is List == false){
        return [];
      }
      return (rawData["comments"] as List).map((e) => YoutubeVideoComment(e as Map)).toList().cast<YoutubeVideoComment>();
    } catch (e) {
      return [];
    }
  }


  
  static YoutubeVideoComments create({

    String? special_type,
    int? count,
      List<YoutubeVideoComment>? comments,
})  {
    YoutubeVideoComments youtubeVideoComments = YoutubeVideoComments({
  
      "@type": special_type,
      "count": count,
      "comments": (comments != null)? comments.map((res) => res.toJson()).toList().cast<Map>(): null,


  });


return youtubeVideoComments;

      }
}