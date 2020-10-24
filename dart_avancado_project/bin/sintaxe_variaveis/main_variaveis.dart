void main(List<String> arguments) {
  // qualque tipo de numero:
  num age = 24;

  // inteiro
  int people = 5;

  // decimais
  double decimal = 20.2;

  // texto
  String text = 'oieeee';

  // Conversão de tipos:
  int teste = int.parse('12');
  double teste2 = double.parse('10');

  // captura de erro
  int erro = int.parse('12.09', onError: (source) => 0);

  // calcular algo:
  int dogYears = 7;
  int dogAge = age * dogYears;

  print(
      'num: $age | int: $people | double: $decimal | String: $text | conversão: $teste e $teste2');
  print(' Opsssss deu erro: $erro anos!');

  print('calculo: A sua idade em anos de cachorro é: $dogAge');
}
