/*
Programa para interagir com o usuario.
* para isso precisamos importar a biblioteca dart:io
* io significa entrada e saida
 */
import 'dart:io';

void main(List<String> args) {
  // capturar o nome do usuario
  print('Qual é o seu nome ?');
  // para capturar o nome:
  String name = stdin.readLineSync();

  name.isEmpty
      ? print('Você não informou seu nome :(')
      : print('Olá, $name :)');
}
