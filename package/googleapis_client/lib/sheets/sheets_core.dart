// ignore_for_file: unused_local_variable

import 'package:googleapis/sheets/v4.dart';
import 'package:googleapis_client/google_apis_client_key.dart';
import 'package:googleapis_client/googleapis_client_raw/google_apis_client_raw.dart';

class Sheets extends GoogleApisClientRaw {
  Sheets({
    required super.googleApisClientApiKey,
  });
  Future<SheetsApi> sheetsApiClient(
      {GoogleApisClientApiKey? googleApisClientApiKey}) async {
    GoogleApisClientApiKey google_apis_client = await googleApisClient(
      googleApisClientApiKey: googleApisClientApiKey,
    );
    SheetsApi sheetsApi = SheetsApi(google_apis_client.google_auth_client);
    return sheetsApi;
  }

  test() async {}
}
