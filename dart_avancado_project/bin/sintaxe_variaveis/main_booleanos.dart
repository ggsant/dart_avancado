void main(List<String> args) {
  bool rich = false;
  print('rico: $rich');

  rich = true;

  print('rico: $rich');

  // ternarios
  // (condição) ? (se for true) : (se for false)
  print('Você é ${rich ? 'Rico' : 'Pobre'}!');

  // tipo da variavel
  print(rich.runtimeType);
}
