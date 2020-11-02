void gerador() {
  Iterable<int> geradorSincrono(int repeticao) sync* {
    int valor = 0;
    while (valor < repeticao) {
      yield ++valor;
    }
  }

  print(geradorSincrono(10));

  Stream<int> geradorAssincrono(int repeticao) async* {
    int valor = 0;
    while (valor < repeticao) {
      yield ++valor;
    }
  }

  geradorAssincrono(10).forEach((element) => print(element));
}

void main() {
  gerador();
}
