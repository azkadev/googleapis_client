// ignore_for_file: non_constant_identifier_names

import "package:googleapis_client/google_apis_client_key.dart";
import "package:googleapis_client/packages/packages.dart";
import "package:googleapis_client/scopes/scopes.dart";

class GoogleApisClientRaw {
  GoogleApisClientApiKey google_apis_client_api_key =
      GoogleApisClientApiKey({});

  GoogleApisClientRaw({
    required GoogleApisClientApiKey googleApisClientApiKey,
  }) {
    google_apis_client_api_key = googleApisClientApiKey;
    Future(() async {
      if (googleApisClientApiKey.is_init) {
        google_apis_client_api_key = googleApisClientApiKey;
      } else {
        google_apis_client_api_key = await initClient(
          googleApisClientApiKey: googleApisClientApiKey,
        );
      }
    });
  }

  Future<GoogleApisClientApiKey> initClient({
    required GoogleApisClientApiKey googleApisClientApiKey,
  }) async {
    if (googleApisClientApiKey.is_init) {
      return googleApisClientApiKey;
    }
    if (googleApisClientApiKey["@type"] == "serviceAccount" ||
        googleApisClientApiKey["type"] == "service_account") {
      googleApisClientApiKey.google_auth_client = await clientViaServiceAccount(
        ServiceAccountCredentials.fromJson(
          googleApisClientApiKey.rawData,
        ),
        scopes,
      );
      googleApisClientApiKey.is_init = false;
      return googleApisClientApiKey;
    }
    return googleApisClientApiKey;
  }

  Future<GoogleApisClientApiKey> googleApisClient({
    GoogleApisClientApiKey? googleApisClientApiKey,
  }) async {
    if (googleApisClientApiKey != null) {
      return await initClient(googleApisClientApiKey: googleApisClientApiKey);
    } else {
      if (google_apis_client_api_key.is_init) {
        return google_apis_client_api_key;
      } else {
        google_apis_client_api_key = await initClient(
            googleApisClientApiKey: google_apis_client_api_key);
        return google_apis_client_api_key;
      }
    }
  }
}
