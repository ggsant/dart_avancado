void main() {
  creatButton('Botao Camera', createdButton);

  //* anonimas
  creatButton('Botão da galeria', () {
    print("Botão Criado na função anonima \n");
  });

  creatButton('Botão fechar', () {}, color: 'Branco', wigth: 20.0);
}

void createdButton() {
  print('Botão criado! \n');
}

void creatButton(String text, Function criadoFun,
    {String color, double wigth}) {
  print(text);
  print(
      color ?? 'Preto'); // verifica se a cor foi passada, se nao atribui preto
  print(wigth ?? '50.0');

  criadoFun();
}
