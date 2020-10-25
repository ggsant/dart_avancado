void main() {
  print('Começou');
  loadUm();
  loadDois();
  loadTres();
  print('Continuou');
}

//* usadas para quando dependemos de um retorno assincrono, no futuro

loadUm() async {
  await Future.delayed(const Duration(seconds: 2));
  print('Carregou  ----- 2 segundos------');
}

loadDois() async {
  await Future.delayed(const Duration(seconds: 4));
  print('Carregou  ----- 4 segundos ------');
}

loadTres() async {
  await Future.delayed(const Duration(seconds: 5));
  print('Carregou  ----- 5 segundos ------');
}
