// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class YoutubeSchemaText extends JsonScheme {
  YoutubeSchemaText(super.rawData);

  static Map get defaultData {
    return {"@type": "youtubeSchemaText", "type": "channel", "data": ""};
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

  String? get type {
    try {
      if (rawData["type"] is String == false) {
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get data {
    try {
      if (rawData["data"] is String == false) {
        return null;
      }
      return rawData["data"] as String;
    } catch (e) {
      return null;
    }
  }

  static YoutubeSchemaText create({
    String? special_type,
    String? type,
    String? data,
  }) {
    YoutubeSchemaText youtubeSchemaText = YoutubeSchemaText({
      "@type": special_type,
      "type": type,
      "data": data,
    });

    return youtubeSchemaText;
  }
}
