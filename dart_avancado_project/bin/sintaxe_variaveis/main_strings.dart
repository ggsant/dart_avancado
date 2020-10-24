void main(List<String> args) {
  String name = 'Gabriela Santos';
  print(name);

  // concatenação
  print('Olá, $name');

  // operações

  // dividir uma string em n pedaços
  var splittedName = name.split(' '); // divide pelos espaços
  print(splittedName);
  print(
      'Meu primeiro nome é ${splittedName[0]} e o meu sobrenome é: ${splittedName[1]}');

  // recuperar uma substring
  String nickname = name.substring(0, 3);
  print(nickname);

  // recuperar index dentro da string
  String soup = 'Sopa de letrinhas';
  int index = soup.indexOf(' de ');
  print(index);
  print('a sopa é: ${soup.substring(index).trim()}');

  // tamanho
  print(name.length);

  // buscar algo especifico numa string
  print('Contem hastag ${name.contains('#')}');

  // FUNÇÕES PARA VARIAVEIS STRINGS

  String palavra = ' Cachorro Quente';

  // minuscula
  print(palavra.toLowerCase());
  // maiuscula
  print(palavra.toUpperCase());
  // tirar espaços na frente e atras
  print(palavra.trim());
  // separar palavras
  print(palavra.split(' '));
  // pegar uma substring
  print(palavra.substring(3, 6));
  // se a string começa com um determinado caractere
  print(palavra.startsWith('c'));
  print(palavra.startsWith('N'));
  // como trocar valores
  print(palavra.replaceAll('o', 'b'));
  // trocar somente a primeira vez q aparece
  print(palavra.replaceFirst('a', 'e'));
  // trocar em um intervalo
  print(palavra.replaceRange(0, 7, 'banana'));
  // Se contem determinado caractere
  print(palavra.contains('q'));
  // indice de um pedaço da string
  print(palavra.indexOf('quente'));
  // saber o comprimento da string
  print(palavra.length);
  // se termina com determinado caractere
  print(palavra.endsWith('r'));
  // comparar - retorna 0 se for igual e retorna 1 se for diferente
  print(palavra.compareTo('cachorro'));
  // testar se é ou nao alguma coisa
  print('1' is String);
  print(int.parse('2') is int);
  // CodeUnits Retorna uma lista não modificável das unidades de código UTF-16 desta string.
  print(palavra.codeUnits);
  // hashCode Retorna um código hash derivado das unidades de código da string. [...]
  print(palavra.hashCode);
  // isEmpty Retorna verdadeiro se esta string estiver vazia.
  print(palavra.isEmpty);
  // isNotEmpty Retorna verdadeiro se esta string não estiver vazia.
  print(palavra.isNotEmpty);
  // runes Retorna um Iterable de pontos de código Unicode desta string. [...]
  print(palavra.runes);
  // allMatches Compare este padrão com a string repetidamente. [...]
  print(palavra.allMatches('quente', 0));
  // codeUnitAt Retorna a unidade de código UTF-16 de 16 bits no dado index.
  print(palavra.codeUnitAt(5));

  // mais informações acessar: https://api.flutter.dev/flutter/dart-core/String-class.html
}
