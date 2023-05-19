// ignore_for_file: non_constant_identifier_names

import "package:googleapis_client/googleapis_client_raw/google_apis_client_raw.dart";
import "package:googleapis_client/youtube/youtube.dart";

class GoogleApisClient extends GoogleApisClientRaw {
  GoogleApisClient({
    required super.googleApisClientApiKey,
  });

  Youtube get youtube {
    Youtube youtube_client = Youtube(googleApisClientApiKey: google_apis_client_api_key);
    // Yot
    return youtube_client;
  }
}
