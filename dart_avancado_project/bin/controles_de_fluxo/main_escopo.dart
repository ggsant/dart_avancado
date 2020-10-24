void main(List<String> args) {
  int age =
      43; // essa variavel é enxergada por todo o programa pq ele está no escopo superior

  if (age == 43) {
    print('Você tem 43 anos!');
  } else {
    bool hasDebts = true; // essa variavel só é enxergada dentro do else
    print('Voce tem $age anos e ${hasDebts ? '' : 'não'}tem dividas');
  }
}
