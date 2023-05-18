import 'package:googleapis_client_dart/googleapis_client_dart.dart';

void main(List<String> arguments) {
  Lib lib = Lib(pathLib: "/home/hexaminate/Documents/hexaminate/app/glx/lib/template/googleapis_client/native_lib/build/libgoogleapis_client.so");

  var calculate_result = lib.calculate(num1: 10, num2: 5);
  print(calculate_result);

  lib.print(data: 'azka');

  var result = lib.request(data: {"@type": "oke", "ok": "p"});
  print(result);
}
