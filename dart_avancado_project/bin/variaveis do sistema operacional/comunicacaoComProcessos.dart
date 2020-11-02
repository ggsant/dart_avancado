import 'dart:io';
import 'dart:convert';

void main() {
  // para linux e mac
  Process.start('cat', []).then((Process process) {
    // tranformar a siada em texto
    process.stdout.transform(utf8.decoder).listen((data) {
      print(data);
    });

    process.stdin.writeln('Essa é a aula de comunicação com processos!!!');
    Process.killPid(process.pid);
  });
}
