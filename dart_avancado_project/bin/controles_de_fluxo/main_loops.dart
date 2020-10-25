void main(List<String> args) {
  //* loops
  //* for
  //* (inicio) |(condição)| (incremento)
  for (var i = 0; i < 10; i += 2) {
    print('For: $i');
  }
  print('-------------------------');
  //* podemos navegar por uma lista
  //* na mão
  List letters = ['a', 'b', 'c', 'd', 'e'];

  for (var i = 0; i < letters.length; i++) {
    print('For: ${letters[i]}');
  }
  //* usando o for in
  for (String l in letters) {
    print('For in: $l');
  }

  print('-------------------------');

  //* while - só executa se a condição for vdd pelo menor uma vez
  int j = 0;
  while (j < 10) {
    print('while: $j');
    j++; //* é preciso colocar o incremento aqui pq se não ele cairá num loop infinito
  }

  print('-------------------------');
  //* Do while: independente da condição ele executará pelo menos uma vez
  int k = 0;
  do {
    print('Do while: $k');
    k++;
  } while (k < 10);
}
