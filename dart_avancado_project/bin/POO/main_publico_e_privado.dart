class Animal {
  String _name = ''; //* privado - colocamos um _ na frente da variavel
  int _age = 0;
  String hair = '';

  Animal(this._name, this._age, this.hair);

  dados() => print('O gato se chama $_name tem $_age anos e pelo $hair');
  void _display(String msg) =>
      print('mensagem: $msg'); //* o dart n permite o acesso a metodos privados

  void fazSom(String msg) => _display(msg);
  //* para mudar a variavel privada, utilizamos get e set

}

void main() {
  Animal cat = Animal('salem', 5, 'preto');

  print(cat.dados());
  cat.fazSom('miau');
}
