// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class YoutubeVideoManifestAudio extends JsonScheme {

  
  YoutubeVideoManifestAudio(super.rawData);
   
  static Map get defaultData {
    return {"@type":"youtubeVideoManifestAudio","video_codec":"opus","bitrate":44805,"mime_type":"audio/webm","container_name":"webm","is_throttled":true,"quality":"tiny","size":186994,"tag":600,"url":"https://rr5---sn-uxa3vhnxa-n0cl.googlevideo.com/videoplayback?expire=1684661218&ei=go9pZOeiMNfA4t4P7ZOV8Aw&ip=114.125.94.55&id=o-ABz8KwdlAJBsYlZSb4GX1Cdl21a_yHjkeoEq7qyRAlYS&itag=600&source=youtube&requiressl=yes&mh=TL&mm=31%2C29&mn=sn-uxa3vhnxa-n0cl%2Csn-uxa3vhnxa-jb3y&ms=au%2Crdu&mv=m&mvi=5&pl=22&ctier=SH&initcwndbps=470000&spc=qEK7ByEx1EO6hYlGvlce0LFroaWZ6hA&vprv=1&svpuc=1&mime=audio%2Fwebm&gir=yes&clen=186994&dur=37.221&lmt=1664677491541303&mt=1684639275&fvip=3&keepalive=yes&fexp=24007246&beids=24350017&c=ANDROID&txp=6318224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cctier%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAL28-WI0uCUHhFNzlGUNkrByFMvPlLvIaI0GkrjT8J-EAiB27JS9kAuzaPFSNgRSy9B642S5hcfq-MaSbqe2SSc0IQ%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIhANvWRpFIky2tSQreabyvSwwHe8NTWMWe63iIwYV1FPrfAiBIufwo6Tvazl8mMEjcsfoUG3JYH862dq0IsSzwzPPk8w%3D%3D"};
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


  
  String? get video_codec {
    try {
      if (rawData["video_codec"] is String == false){
        return null;
      }
      return rawData["video_codec"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get bitrate {
    try {
      if (rawData["bitrate"] is int == false){
        return null;
      }
      return rawData["bitrate"] as int;
    } catch (e) {
      return null;
    }
  }


  
  String? get mime_type {
    try {
      if (rawData["mime_type"] is String == false){
        return null;
      }
      return rawData["mime_type"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get container_name {
    try {
      if (rawData["container_name"] is String == false){
        return null;
      }
      return rawData["container_name"] as String;
    } catch (e) {
      return null;
    }
  }


  
  bool? get is_throttled {
    try {
      if (rawData["is_throttled"] is bool == false){
        return null;
      }
      return rawData["is_throttled"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  String? get quality {
    try {
      if (rawData["quality"] is String == false){
        return null;
      }
      return rawData["quality"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get size {
    try {
      if (rawData["size"] is int == false){
        return null;
      }
      return rawData["size"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get tag {
    try {
      if (rawData["tag"] is int == false){
        return null;
      }
      return rawData["tag"] as int;
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


  
  static YoutubeVideoManifestAudio create({

    String? special_type,
    String? video_codec,
    int? bitrate,
    String? mime_type,
    String? container_name,
    bool? is_throttled,
    String? quality,
    int? size,
    int? tag,
    String? url,
})  {
    YoutubeVideoManifestAudio youtubeVideoManifestAudio = YoutubeVideoManifestAudio({
  
      "@type": special_type,
      "video_codec": video_codec,
      "bitrate": bitrate,
      "mime_type": mime_type,
      "container_name": container_name,
      "is_throttled": is_throttled,
      "quality": quality,
      "size": size,
      "tag": tag,
      "url": url,


  });


return youtubeVideoManifestAudio;

      }
}