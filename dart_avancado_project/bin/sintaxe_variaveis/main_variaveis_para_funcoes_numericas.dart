void main() {
  // funções que podemos utilizar para tipos numéricos

  num numero = 1.15;

  // arredondar o numero:
  print(numero.round());

  // comparar numeros:
  /*
  -> Se der -1 então o numero é inferior a 20
  -> Se der 0 eles são iguais.
  -> se der 1 entao o sumero é superior
  */
  print(numero.compareTo(20));

  // converter para um numero inteiro
  print(numero.toInt());

  // converter para double
  print(10.toDouble());

  // tranformar para string
  print(numero.toString());
  print(numero.toStringAsFixed(1));

  // verificar se algo é vdd:
  // Retorna true se for verdade
  print(numero.toString() is String);

  // verificar se é infinito
  print(numero.isInfinite);
  print((numero / 0).isInfinite);
  // ou se é finito
  print(numero.isFinite);

  // truncar um numero
  print(numero.truncate());
  print(numero.floor());
}
