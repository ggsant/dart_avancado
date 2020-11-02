import 'dart:io';

void main() async {
  bool loop = true;

  var socket = await Socket.connect('127.0.0.1', 3000);

  while (loop) {
    print('Conectado, o que você quer falar? ');
    String text = stdin.readLineSync();
    socket.write(text);
  }

  await socket.close();
  exit(0);
}
