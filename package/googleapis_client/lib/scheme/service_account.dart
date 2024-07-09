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
import "json_dart.dart";
// import "dart:convert";

class ServiceAccount extends JsonScheme {
  ServiceAccount(super.rawData);

  static Map get defaultData {
    return {
      "@type": "serviceAccount",
      "type": "service_account",
      "project_id": "nod",
      "private_key_id": "",
      "private_key":
          "-----BEGIN PRIVATE KEY-----/FRxgbsPu7i-----END PRIVATE KEY-----\n",
      "client_email": "mkkm",
      "client_id": "117580",
      "auth_uri": "https://o/oauth2/auth",
      "token_uri": "https:/token",
      "auth_provider_x509_cert_url":
          "https://www.googleapis.com/oauth2/v1/certs",
      "client_x509_cert_url": "",
      "universe_domain": ""
    };
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get type {
    try {
      if (rawData["type"] is String == false) {
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get project_id {
    try {
      if (rawData["project_id"] is String == false) {
        return null;
      }
      return rawData["project_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get private_key_id {
    try {
      if (rawData["private_key_id"] is String == false) {
        return null;
      }
      return rawData["private_key_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get private_key {
    try {
      if (rawData["private_key"] is String == false) {
        return null;
      }
      return rawData["private_key"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get client_email {
    try {
      if (rawData["client_email"] is String == false) {
        return null;
      }
      return rawData["client_email"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get client_id {
    try {
      if (rawData["client_id"] is String == false) {
        return null;
      }
      return rawData["client_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get auth_uri {
    try {
      if (rawData["auth_uri"] is String == false) {
        return null;
      }
      return rawData["auth_uri"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get token_uri {
    try {
      if (rawData["token_uri"] is String == false) {
        return null;
      }
      return rawData["token_uri"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get auth_provider_x509_cert_url {
    try {
      if (rawData["auth_provider_x509_cert_url"] is String == false) {
        return null;
      }
      return rawData["auth_provider_x509_cert_url"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get client_x509_cert_url {
    try {
      if (rawData["client_x509_cert_url"] is String == false) {
        return null;
      }
      return rawData["client_x509_cert_url"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get universe_domain {
    try {
      if (rawData["universe_domain"] is String == false) {
        return null;
      }
      return rawData["universe_domain"] as String;
    } catch (e) {
      return null;
    }
  }

  static ServiceAccount create({
    String? special_type,
    String? type,
    String? project_id,
    String? private_key_id,
    String? private_key,
    String? client_email,
    String? client_id,
    String? auth_uri,
    String? token_uri,
    String? auth_provider_x509_cert_url,
    String? client_x509_cert_url,
    String? universe_domain,
  }) {
    ServiceAccount serviceAccount = ServiceAccount({
      "@type": special_type,
      "type": type,
      "project_id": project_id,
      "private_key_id": private_key_id,
      "private_key": private_key,
      "client_email": client_email,
      "client_id": client_id,
      "auth_uri": auth_uri,
      "token_uri": token_uri,
      "auth_provider_x509_cert_url": auth_provider_x509_cert_url,
      "client_x509_cert_url": client_x509_cert_url,
      "universe_domain": universe_domain,
    });

    return serviceAccount;
  }
}
