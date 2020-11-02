import 'dart:async';

void main() {
  var listaDeEventos = List<dynamic>();

  var controlador = StreamController<dynamic>();
  var strem = controlador.stream;

  strem.listen((onData) {
    print('Evento disparado: $onData');
    listaDeEventos.add(onData);
  }, onDone: () {
    print('Stream finalizada!');
    print(listaDeEventos);
  });

  controlador.sink.add('Gabriela');
  controlador.sink.add(24);
  controlador.sink.add('São Carlos');
  controlador.sink.add('Curso de Dart');
  controlador.close();

  print('Canal aberto...');
}
