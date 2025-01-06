/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
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
