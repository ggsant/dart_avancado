import 'dart:io';
import 'dart:convert';

void main() async {
  var serverSocket = await ServerSocket.bind('127.0.0.1', 3000);
  print('Escutando mensagens do além.....');

  await for (var socket in serverSocket) {
    socket.listen((List values) {
      print(
          '${socket.remoteAddress}:${socket.remotePort}= ${utf8.decode(values)}');
    });
  }
}
