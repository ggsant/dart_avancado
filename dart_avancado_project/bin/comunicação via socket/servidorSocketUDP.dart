import 'dart:convert';
import 'dart:io';

void main() async {
  var data = '****** Informações enviadas via protocolo udp ********';

  List<int> dataToSend = utf8.encode(data);
  int port = 3000;

  //* Servidor
  RawDatagramSocket.bind(InternetAddress.loopbackIPv4, port)
      .then((RawDatagramSocket udpSocket) {
    udpSocket.listen((RawSocketEvent event) {
      if (event == RawSocketEvent.read) {
        print('Servidor escutando.......\n');

        Datagram datagram = udpSocket.receive();
        print(utf8.decode(datagram.data));
      }
    });
    //* cliente
    udpSocket.send(dataToSend, InternetAddress.loopbackIPv4, port);
  });
}
