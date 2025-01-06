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

import "package:googleapis_client/apis/apis.dart" as googleapis_client_apis;
import "package:googleapis_client/scheme/scheme.dart"
    as googleapis_client_scheme;
import "package:googleapis_client/gmail/gmail.dart";
import "package:googleapis_client/googleapis_client_raw/google_apis_client_raw.dart";
import "package:googleapis_client/sheets/sheets.dart";
import "package:googleapis_client/youtube/youtube.dart";

class GoogleApisClient extends GoogleApisClientRaw {
  GoogleApisClient({
    required super.googleApisClientApiKey,
  });

  Gmail get gmail {
    Gmail gmail_client =
        Gmail(googleApisClientApiKey: google_apis_client_api_key);

    return gmail_client;
  }

  Sheets get sheets {
    Sheets sheets_client =
        Sheets(googleApisClientApiKey: google_apis_client_api_key);

    return sheets_client;
  }

  Youtube get youtube {
    Youtube youtube_client =
        Youtube(googleApisClientApiKey: google_apis_client_api_key);
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
