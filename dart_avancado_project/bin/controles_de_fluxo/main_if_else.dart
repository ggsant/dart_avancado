import 'dart:io';

void main(List<String> args) {
  print('Qual a sua idade?');
  int idade = int.parse(stdin.readLineSync());

  if (idade == 23) print('Você tem 23 anos!');

  if (idade != 23) print('Você não tem 23 anos!');

  if (idade < 13) print('Você é uma criança');

  if (idade > 60) print('Você é da terceira idade');

  if (idade < 18) {
    print('Você é menor de idade');
  } else {
    print('Você é maior de idade');
  }

  //* ternarios
  //* if else simples
  int numero = 0;
  numero > 0
      ? print('numero é maior que zero')
      : print('numero não é maior que zero');
  //* mais de um if else
  print(numero > 0
      ? 'numero maior que zero'
      : numero == 0
          ? 'é igual a zero'
          : 'é diferente de zero');
}
