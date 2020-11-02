import 'dart:io';

void main() {
  // exemplo abertura de arquivos
  String path = Directory.current.path + '/test.txt';
  File file = File(path);

  Future<RandomAccessFile> promessaDeArquivo = file.open(mode: FileMode.append);

// o then é um metodo embutido nos futuros. Ele chama uma função anonima e a executa quando a tarefa que foi dada foi executada.
  promessaDeArquivo.then((RandomAccessFile arquivoAberto) {
    print('O arquivo foi aberto');
    arquivoAberto
        .writeString('Essa função escreve no arquivo assincronamente')
        .then((value) {
          print('Arquivo escrito com sucesso');
        })
        .catchError(() => print('Ocorreu um erro, tente novamente!'))
        .whenComplete(() => arquivoAberto.close());
  });
  print('************************** FIM ***************');
}
