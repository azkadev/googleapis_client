import "package:googleapis/youtube/v3.dart";
import "package:googleapis_client/packages/packages.dart";
import "package:googleapis_client/scopes/scopes.dart";
import "package:http/http.dart" as http;

class GoogleApisClient {
  late http.Client client;

  bool is_init = false;
  GoogleApisClient() {
    Future(() async {
      client = await clientViaServiceAccount(
        ServiceAccountCredentials.fromJson({}),
        scopes,
      );
    });
  }

  get youtube {
    // YouTubeApi youTubeApi = YouTubeApi(client);
  }
}
