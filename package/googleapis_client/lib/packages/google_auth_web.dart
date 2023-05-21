import 'package:googleapis_auth/auth_browser.dart';
import 'package:http/http.dart';

export "package:googleapis_auth/auth_browser.dart";

Future<AutoRefreshingAuthClient> clientViaServiceAccount(
    ServiceAccountCredentials serviceAccountCredentials,
    List<String> scopes) async {
  Client client = Client();
  return autoRefreshingClient(
    ClientId(""),
    AccessCredentials.fromJson({}),
    client,
  );
}
