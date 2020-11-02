import 'dart:io';

void main() async {
  print('Inicio');
  appendFile();

  print(await readFile());
  print('Fim');
}

void appendFile() {
  File file = File(Directory.current.path + 'test.txt');
  DateTime dateTime = DateTime.now();
  file.writeAsString(dateTime.toString() + '\r\n', mode: FileMode.append);
}

Future<String> readFile() {
  File file = File(Directory.current.path + 'test.txt');
  return file.readAsString();
}
