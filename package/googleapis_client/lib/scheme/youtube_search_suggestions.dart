// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

class YoutubeSearchSuggestions extends JsonScheme {
  YoutubeSearchSuggestions(super.rawData);

  static Map get defaultData {
    return {
      "@type": "youtubeSearchSuggestions",
      "count": 14,
      "suggestions": [
        "galaxus",
        "galaxus schweiz",
        "galaxus gutschein",
        "galaxus digitec",
        "galaxus geneva",
        "galaxus erfahrungen",
        "galaxus store",
        "galaxus basel",
        "galaxus lausanne",
        "galaxus rabattcode",
        "galaxus deutschland",
        "galaxus bern",
        "galaxus telefonnummer",
        "galaxus francais"
      ]
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

  int? get count {
    try {
      if (rawData["count"] is int == false) {
        return null;
      }
      return rawData["count"] as int;
    } catch (e) {
      return null;
    }
  }

  List<String> get suggestions {
    try {
      if (rawData["suggestions"] is List == false) {
        return [];
      }
      return (rawData["suggestions"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  static YoutubeSearchSuggestions create({
    String? special_type,
    int? count,
    List<String>? suggestions,
  }) {
    YoutubeSearchSuggestions youtubeSearchSuggestions =
        YoutubeSearchSuggestions({
      "@type": special_type,
      "count": count,
      "suggestions": suggestions,
    });

    return youtubeSearchSuggestions;
  }
}
