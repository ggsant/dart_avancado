void main(List<String> args) {
  //* while é um loop perigoso e precisa ser parado
  //* Depende sempre da condição ser vdd
  int numero = 10;
  while (numero > 0) {
    print("While: $numero");
    numero--;
  }

  //* Do while
  //* Sempre roda a primeira vez sem consultar a condição e na segunda ele averigua
  int contagem = 0;
  do {
    print("Do while: $contagem");
    contagem++;
  } while (contagem <= 7);
}
