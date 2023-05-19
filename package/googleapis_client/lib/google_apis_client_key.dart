// ignore_for_file: non_constant_identifier_names

import 'package:galaxeus_lib/scheme/json_dart.dart';
import 'package:googleapis_client/packages/packages.dart';

class GoogleApisClientApiKey extends JsonDart {
  late AutoRefreshingAuthClient google_auth_client;
  bool is_init = false;
  GoogleApisClientApiKey(super.rawData);
}
