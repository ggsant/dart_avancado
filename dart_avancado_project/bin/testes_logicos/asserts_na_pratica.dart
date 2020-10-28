//* Herança é uma forma de aproveitar atributos, metodos, de outras classes

void main() {
  try {
    print('\n -----------Dados do cliente-------------');

    var cliente = Client();
    cliente.name = 'Gabriela Santos';
    cliente.cpf = '11111111111';
    assert(cliente.cpf.length == 11, 'O CPF precisa conter 11 caracteres');
    cliente.address = 'Av. Brasil, 750, JD passo alto';
    cliente.cameIn();
    print('nome: ${cliente.name}');
    print('cpf: ${cliente.cpf}');
    print('endereço: ${cliente.address}');
    cliente.cameOut();

    print('\n -----------Dados do Funcionario-------------');

    var empregado = Employeer();
    empregado.name = 'Leandro Costa';
    assert(empregado.name.contains(' '),
        'É necessario informar pelo menos um sobrenome');
    empregado.cpf = '1111456456456111111';
    assert(empregado.cpf.length == 11, 'O CPF precisa conter 11 caracteres');
    empregado.mom = 'Joice costa';
    empregado.phone = '2356-8956';
    assert(
        empregado.phone.length == 8, 'O telefone precisa conter 8 caracteres');
    empregado._registrationCode = 4545656564;
    empregado.cameIn();

    print('nome: ${empregado.name}');
    print('cpf: ${empregado.cpf}');
    print('Mãe: ${empregado.mom}');
    print('Tel: ${empregado.phone}');
    print('Registro: ${empregado.registrationCode}');

    empregado.cameOut();
  } catch (e) {
    print(e);
  }
}

class Person {
  //* classe pai
  String name;
  String cpf;

  void cameIn() {
    print('Entrada: ${_dateTime()}');
  }

  void cameOut() {
    print('Saida: ${_dateTime()}');
  }

  String _dateTime() {
    DateTime today = DateTime.now();
    String dateSlug =
        '${today.day.toString().padLeft(2, '0')}/${today.month.toString().padLeft(2, '0')}/${today.year.toString()}}'; //* esse padLeft é para formatação de date e ora. Primeiro vc passa a quantidade de caracteres que geralmente se espera, e se nao tiver a função contatena o 0 a esquerda
    dateSlug +=
        '${today.hour.toString().padLeft(2, '0')}:${today.minute.toString().padLeft(2, '0')}:${today.second.toString().padLeft(2, '0')}';
    return dateSlug;
  }
}

//* classes filhas
class Client extends Person {
  String address;
}

class Employeer extends Person {
  String mom;
  String phone;
  int _registrationCode;

  int get registrationCode => _registrationCode;
}
