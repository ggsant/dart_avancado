import 'dart:async';

int counter = 0;

void main() {
  Duration duration = Duration(seconds: 2);
  Timer.periodic(duration, timeOut);
  print('Iniciado: ${getTime()}');
}

void timeOut(Timer timer) {
  print('Espera: ${getTime()}');
  counter++;
  if (counter >= 5) {
    timer.cancel();
  }
}

String getTime() {
  DateTime dateTime = DateTime.now();
  return dateTime.toString();
}
