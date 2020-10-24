void main(List<String> args) {
  // numéricas
  int num1 = 101;
  int num2 = 2;
  dynamic resultado = 0;

  resultado = num1 + num2;
  print('soma: $resultado');
  resultado = num1 - num2;
  print('subtração: $resultado');
  resultado = num1 * num2;
  print('multiplicação: $resultado');
  resultado = num1 / num2;
  print('divisão: $resultado');
  resultado = num1 ~/ num2;
  print('divisão por inteiro: $resultado');
  resultado = num1 % num2;
  print('retorno da divisão ou resto: $resultado');
  resultado = num1++;
  print('incremento: $resultado');
  resultado = num2--;
  print('decremento: $resultado');

  // lógicos numericos
  var testDiferente = (10 != 20);
  print('comparação: $testDiferente');
  var testMaior = (10 > 20);
  print('comparação: $testMaior');
  var testMaiorIgual = (10 >= 20);
  print('comparação: $testMaiorIgual');
  var testIgual = (10 == 20);
  print('comparação: $testIgual');

  // lógicos booleanos
  // ou / or
  // ignore: dead_code
  bool testOr = (true || false);
  print(testOr);
  // and / e
  bool testAnd = (true && false);
  print(testAnd);

  // complexa
  // usamos o ! para negar
  bool complexNegada = !(10 > 20);
  print('complexa negada $complexNegada');
  bool complexNaoNegada = (10 > 20);
  print('complexa não negada $complexNaoNegada');
}
