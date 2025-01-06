import 'dart:io';

import 'package:general_lib/dart/dart.dart';

void main(List<String> args) {
  print(
      Dart.pub.installFromDirectoryFresh(directoryPackage: Directory.current));
}
