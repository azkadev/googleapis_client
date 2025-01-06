import 'dart:io';

void main(List<String> args) async {
  final Stream<int> asas = slapsa();

  final strm = asas.listen((e) {
    // print(e);
  });
  await Future.delayed(Duration(seconds: 2));
  print("paused");
  strm.pause();
  await Future.delayed(Duration(seconds: 2));
  strm.resume();
  stdin.listen((e) {
    strm.cancel();
  });
  strm;
}

Stream<int> slapsa() async* {
  int tick = 0;
  while (true) {
    await Future.delayed(Duration(milliseconds: 1));
    tick++;
    print(tick);
    yield tick;
  }
}
