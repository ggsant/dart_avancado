bool estaAprovado(double nota1, double nota2, double media) {
  if (media == 0) {
    throw ArgumentError('A media nao pode ser igual a zero');
  }

  if (nota1 < 0) {
    throw ArgumentError('A nota1 nao pode ser negativa');
  }

  if (nota2 < 0) {
    throw ArgumentError('A nota2 nao pode ser negativa');
  }

  double result = (nota1 + nota2) / 2;

  if (result < media) {
    return false;
  } else {
    return true;
  }
}
