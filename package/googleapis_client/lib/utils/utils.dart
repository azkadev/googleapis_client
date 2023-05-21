// ignore_for_file: non_constant_identifier_names, empty_catches

import "package:googleapis_client/scheme/scheme.dart"
    as googleapis_client_scheme;
// import 'package:googleapis_client/scheme/youtube_schema_text.dart';

class GoogleApisClientUtils {
  GoogleApisClientUtils();

  static googleapis_client_scheme.YoutubeSchemaText parseTextToYoutube({
    required String text,
    bool hideAtUsername = true,
  }) {
    try {
      RegExpMatch? regExpMatch = RegExp(
        r"(^(@[a-z0-9\.\-_]+)$|(((http(s)?://(www\.|m\.|studio\.)?)?(youtube|youtu).(com|be)/(channel/|watch\?v=([a-z0-9\.\-_]+)|([a-z0-9\.\-_]+)|@[a-z0-9\.\-_]+))?([a-z0-9\.\-_]+)?)|^([a-z0-9\.\-_]+)$)",
        caseSensitive: false,
      ).firstMatch(text);
      if (regExpMatch == null) {
        // print("Sa");
        return googleapis_client_scheme.YoutubeSchemaText({
          "@type": "error",
          "message": "cant_parse_text",
          "description": ""
        });
      }
      // print(regExpMatch.groups(List.generate(regExpMatch.groupCount, (index) => index)));
      String username = () {
        try {
          List<String> usernames_raw =
              regExpMatch.groups([2, 10]).whereType<String>().toList();

          for (var i = 0; i < usernames_raw.length; i++) {
            if (RegExp(r"^(@[a-z0-9\.\-_]+)$", caseSensitive: false)
                .hasMatch(usernames_raw[i])) {
              return usernames_raw[i];
            }
          }
        } catch (e) {}

        return "";
      }.call();

      String channel_id = () {
        try {
          String channelId = regExpMatch.group(13) ?? "";
          bool is_found_channel = () {
            try {
              String channel_words = regExpMatch.group(10) ?? "";
              if (channel_words.toLowerCase() == "channel/") {
                return true;
              }

              String com_words = regExpMatch.group(9) ?? "";
              if (com_words.toLowerCase() == "com") {
                return true;
              }
            } catch (e) {}
            return false;
          }.call();
          if (RegExp(r"^([a-z0-9\.\-_]+)$", caseSensitive: false)
              .hasMatch(channelId)) {
            if (!is_found_channel) {
              try {
                List<String> channel_ids = regExpMatch
                    .groups([0, 1, 3, 13])
                    .whereType<String>()
                    .toList()
                    .toSet()
                    .toList();

                if (channel_ids.length == 1) {
                  if (RegExp(r"^([a-z0-9\.\-_]+)$", caseSensitive: false)
                      .hasMatch(channel_ids.first)) {
                    return channelId;
                  }
                }
              } catch (e) {}
              return "";
            }
            return channelId;
          }

          String com_words = regExpMatch.group(9) ?? "";
          if (com_words.toLowerCase() == "com") {
            if (RegExp(r"^([a-z0-9\.\-_]+)$", caseSensitive: false)
                .hasMatch(regExpMatch.group(12) ?? "")) {
              return regExpMatch.group(12) ?? "";
            }
          }
        } catch (e) {
          print(e);
        }

        return "";
      }.call();

      String video_watch = () {
        try {
          List<String> watch_video_raw =
              regExpMatch.groups([10, 11]).whereType<String>().toList();

          if (RegExp(r"^(watch\?v=([a-z0-9\.\-_]+))$", caseSensitive: false)
              .hasMatch(watch_video_raw.first)) {
            if (RegExp(r"^([a-z0-9\.\-_]+)$", caseSensitive: false)
                .hasMatch(watch_video_raw.last)) {
              return watch_video_raw.last;
            }
          }
        } catch (e) {}

        return "";
      }.call();

      if (username.isNotEmpty) {
        return googleapis_client_scheme.YoutubeSchemaText.create(
          special_type: "youtubeSchemaText",
          type: "channel_username",
          data: username,
        );
      } else if (video_watch.isNotEmpty) {
        return googleapis_client_scheme.YoutubeSchemaText.create(
          special_type: "youtubeSchemaText",
          type: "video",
          data: video_watch,
        );
      } else if (channel_id.isNotEmpty) {
        return googleapis_client_scheme.YoutubeSchemaText.create(
          special_type: "youtubeSchemaText",
          type: "channel_id",
          data: channel_id,
        );
      }
    } catch (e) {}

    return googleapis_client_scheme.YoutubeSchemaText(
        {"@type": "error", "message": "cant_parse_text", "description": ""});
  }
}
