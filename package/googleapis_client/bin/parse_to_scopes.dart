import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  File file = File("./scopes.json");
  String text = """ 

https://www.googleapis.com/auth/drive	See, edit, create, and delete all of your Google Drive files
https://www.googleapis.com/auth/drive.file	See, edit, create, and delete only the specific Google Drive files you use with this app
https://www.googleapis.com/auth/drive.readonly	See and download all your Google Drive files
https://www.googleapis.com/auth/spreadsheets	See, edit, create, and delete all your Google Sheets spreadsheets
https://www.googleapis.com/auth/spreadsheets.readonly	See all your Google Sheets spreadsheets
""";
  if (!file.existsSync()) {
    await file.writeAsString(json.encode([]));
  }
  List scopes = () {
    try {
      return (json.decode(file.readAsStringSync()) as List).cast<String>();
    } catch (e) {}
    return [];
  }.call();
  List<RegExpMatch> regExpMatchs =
      RegExp(r"(https://[a-z/\.\-]+)").allMatches(text).toList();
  for (var i = 0; i < regExpMatchs.length; i++) {
    RegExpMatch regExpMatch = regExpMatchs[i];
    String url_scope = regExpMatch.group(1) ?? "";
    // print();
    //
    if (!scopes.contains(url_scope)) {
      scopes.add(url_scope);
    }
  }
  scopes.sort();
  await file.writeAsString(json.encode(scopes));
}
