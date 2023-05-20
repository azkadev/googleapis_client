// ignore_for_file: non_constant_identifier_names

import "package:googleapis_client/apis/apis.dart" as googleapis_client_apis;
import "package:googleapis_client/scheme/scheme.dart" as googleapis_client_scheme;
import "package:googleapis_client/gmail/gmail.dart";
import "package:googleapis_client/googleapis_client_raw/google_apis_client_raw.dart";
import "package:googleapis_client/sheets/sheets.dart";
import "package:googleapis_client/youtube/youtube.dart";

class GoogleApisClient extends GoogleApisClientRaw {
  GoogleApisClient({
    required super.googleApisClientApiKey,
  });

  Gmail get gmail {
    Gmail gmail_client = Gmail(googleApisClientApiKey: google_apis_client_api_key);

    return gmail_client;
  }

  Sheets get sheets {
    Sheets sheets_client = Sheets(googleApisClientApiKey: google_apis_client_api_key);

    return sheets_client;
  }

  Youtube get youtube {
    Youtube youtube_client = Youtube(googleApisClientApiKey: google_apis_client_api_key);
    // Yot
    return youtube_client;
  }

  YoutubeNoAuth get youtube_no_auth {
    return YoutubeNoAuth();
  }

  Future<googleapis_client_scheme.JsonScheme> invoke({
    required googleapis_client_apis.JsonApis requestData,
    bool throwOnError = false,
  }) async {
    try {} catch (e) {
      if (throwOnError) {
        rethrow;
      }
      return googleapis_client_scheme.JsonScheme({});
    }
    return googleapis_client_scheme.JsonScheme({});
  }

  Future<googleapis_client_scheme.JsonScheme> request({
    required googleapis_client_apis.JsonApis requestData,
    bool throwOnError = false,
  }) async {
    return await invoke(
      requestData: requestData,
      throwOnError: throwOnError,
    );
  }
}
