import 'dart:io';
import 'dart:convert';

void main() {
  print('Hello from Dart!');
  Process.start('scala', ['Scala']).then((Process process) {
    process.stdout
        .transform(utf8.decoder)
        .listen((output) { stdout.write(output); });
    process.exitCode.then((int code) {
      print('Goodbye from Dart!');
    });
  });
}
