// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class YoutubeGetQuerySuggestions extends JsonApis {
  YoutubeGetQuerySuggestions(super.rawData);

  static Map get defaultData {
    return {"@type": "youtubeGetQuerySuggestions", "query": ""};
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

  String? get query {
    try {
      if (rawData["query"] is String == false) {
        return null;
      }
      return rawData["query"] as String;
    } catch (e) {
      return null;
    }
  }

  static YoutubeGetQuerySuggestions create({
    String? special_type,
    String? query,
  }) {
    YoutubeGetQuerySuggestions youtubeGetQuerySuggestions =
        YoutubeGetQuerySuggestions({
      "@type": special_type,
      "query": query,
    });

    return youtubeGetQuerySuggestions;
  }
}
