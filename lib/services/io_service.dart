import 'dart:io';

final Service io = Service();

abstract class Service {
  factory Service() => IOService();

  String get text;
  int get number;
  void console(Object object);
}

class IOService implements Service {
  @override
  String get text {
    String word = stdin.readLineSync() ?? '';
    return word.trimRight();
  }

  @override
  int get number {
    String word = stdin.readLineSync() ?? '';
    return int.tryParse(word.trim()) ?? 0;
  }
  @override
  void console(Object object){
    stdout.write(object);
  }
}
