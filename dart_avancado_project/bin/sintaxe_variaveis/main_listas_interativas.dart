import 'dart:io';

void main(List<String> args) {
  List pessoas = ['Leonardo', 'Gabriela', 'Paulo'];
  print('Informe um indice: ');
  int index = int.parse(stdin.readLineSync());
  print(pessoas.elementAt(index));
}
