void main(List<String> args) {
  int age = 65;

  switch (age) {
    case 18:
      print('Você tem 18 anos e pode tirar sua CNH');
      break;
    case 21:
      print('Você tem 21 anos e ja pode beber nos EUA');
      break;
    case 65:
      print('Você tem 65 anos e pode se aposentar');
      break;
    default:
      print('Nada de especial para a sua idade');
      break;
  }
}
