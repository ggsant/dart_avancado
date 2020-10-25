void main() {
  test();
  sayHello('Gabiela');
  print(converteCmParaM(100));
  print('-------------------------');
  print(digaOi());
  String hello = digaOi('gabi');
  print(hello);
  print('-------------------------');
  now(hello);
  now(hello, true);
  print('-------------------------');
  personData(
      weigh: 62.5, name: 'gabriela', skin: 'branca', age: 24, heigth: 1.75);
}

void test() {
  print('Esse é um teste');
}

void sayHello(String name) {
  print('Olá $name');
}

double converteCmParaM(num cm) {
  return cm / 100.0;
}

//* parametros opcionais - para fazer isso, basta colocar o parametro entre colchetes e atribuir o valor que ele deve assumir caso não seja atribuido:

String digaOi([String name = '']) {
  return 'Oieeeeeeeeeeeee $name';
}

//* manipular tempo para retornar dia e hora
void now(String text, [bool time = false]) {
  var now = DateTime.now();
  var formatedTime = ', a hora atual é: ${now.hour}:${now.minute} ';
  print(
      '$text, hoje é dia ${now.day}/${now.month}/${now.year}${time ? formatedTime : ''} }');
}

//* parametro nomeados - são feitos para organizar a ordem dos parametros na função

void personData(
    {String name, double weigh, double heigth, String skin, int age}) {
  print(
      '$name tem $age anos, sua altura é $heigth e seu peso $weigh e é da cor $skin');
}
