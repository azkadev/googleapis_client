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
import 'dart:convert';

/// return original data json
class JsonApis {
  /// return original data json
  Map rawData;

  /// return original data json
  JsonApis(this.rawData);

  /// return original data json
  static Map get defaultData {
    return {
      "@type": "jsonDart",
    };
  }

  /// return original data json
  static JsonApis create({
    String? special_type,
  }) {
    Map jsonCreate = {
      "@type": special_type,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value == null) {
          jsonCreate.remove(value);
          // jsonCreate[key] = value;
        }
      } catch (e, stack) {
        print("Azka ${e.toString()}, ${stack.toString()}");
      }
    });
    return JsonApis(jsonCreate);
  }

  /// operator map data
  operator *(value) {}

  /// operator map data
  operator /(value) {}

  /// operator map data
  Map operator +(Map value) {
    rawData.addAll(value);
    return rawData;
  }

  /// return original data json
  Map operator -(List values) {
    utils_remove_by_keys_void(values);
    return rawData;
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  void utils_remove_values_null_void() {
    rawData.forEach((key, value) {
      if (value == null) {
        rawData.remove(key);
      }
    });
  }

  /// return original data json
  Map utils_remove_values_null() {
    utils_remove_values_null_void();
    return rawData;
  }

  /// return original data json
  void utils_remove_by_values_void(List values) {
    rawData.forEach((key, value) {
      for (var element in values) {
        if (value == element) {
          rawData.remove(key);
        }
      }
    });
  }

  /// return original data json
  Map utils_remove_by_values(List values) {
    utils_remove_by_values_void(values);
    return rawData;
  }

  void utils_remove_by_keys_void(List keys) {
    for (var element in keys) {
      rawData.remove(element);
    }
  }

  /// return original data json
  Map utils_remove_by_keys(List keys) {
    utils_remove_by_keys_void(keys);
    return rawData;
  }

  /// return original data json
  Map utils_filter_by_keys(List keys) {
    Map jsonData = {};
    for (var key in keys) {
      jsonData[key] = rawData[key];
    }
    return jsonData;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}
