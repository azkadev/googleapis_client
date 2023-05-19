// ignore_for_file: unused_local_variable

import 'package:googleapis/gmail/v1.dart';
import 'package:googleapis_client/google_apis_client_key.dart';
import 'package:googleapis_client/googleapis_client_raw/google_apis_client_raw.dart';

class Gmail extends GoogleApisClientRaw {
  Gmail({
    required super.googleApisClientApiKey,
  });
  Future<GmailApi> gmailApiClient({GoogleApisClientApiKey? googleApisClientApiKey}) async {
    GoogleApisClientApiKey google_apis_client = await googleApisClient(
      googleApisClientApiKey: googleApisClientApiKey,
    );
    GmailApi gmailApi = GmailApi(google_apis_client.google_auth_client);
    return gmailApi;
  }

  test() async {
    GmailApi gmailApi = await gmailApiClient();
  
  }
}
