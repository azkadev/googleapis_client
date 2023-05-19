# Googleapis Client

Library ini di buat agar mempermudah kalian menggunakan googleapis karena library official sulit terutama bagi orang baru / awam / pemula.

### Membuat Secret Api Key

1. Service Account
   - Buka browser kamu [console.cloud.google.com](https://console.cloud.google.com)
   - Bikin Project / Pilih Project
   - Buka Tab Api & services
   - Tap Create Credentials
   - Pilih Service Account
  
instruksi Full Silahkan liat video di bawah ini

[create_service_account_googleapis.webm](https://github.com/azkadev/googleapis_client/assets/82513502/bd8b5fca-3329-4f71-ab66-8705727a149e)

### Install library

```bash
dart pub add googleapis_client
```
### Add Library

```dart
import 'package:googleapis_client/googleapis_client.dart';
```

### Quickstart
```dart
import 'dart:convert';
import 'dart:io';
import 'package:googleapis_client/googleapis_client.dart';

void prettyPrint(dynamic data) {
  if (data is Map || data is List) {
    print(JsonEncoder.withIndent(" " * 2).convert(data));
  } else {
    print(data.toString());
  }
}

void main(List<String> args) async {
  File file = File("./test.json");
  Map jsonKey = json.decode(file.readAsStringSync());
  GoogleApisClient googleApisClient = GoogleApisClient(
    googleApisClientApiKey: GoogleApisClientApiKey(jsonKey),
  );
 
  print((await googleApisClient.youtube.addComment(videoId: "HV4kn5j7IwQ", text: "Hai ini pesan automatis")));
}
```