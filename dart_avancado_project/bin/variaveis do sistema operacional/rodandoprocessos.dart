import 'dart:io';

void main() {
  // lista de todos os arquivos em um diretorio unix
  Process.run('ls', ['-l']).then((ProcessResult results) {
    print(results.stdout);
    print('Código de saida: ${results.exitCode}');
  });
}
