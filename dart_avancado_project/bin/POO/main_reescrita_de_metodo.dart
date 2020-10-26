//* E se precisarmos de herdar de mais de uma classe ? Devemos dar outros extends ?

void main() {
  print('*********Dados do Gerente*************');
  var manager01 = Manager();
  manager01.name = "Sirius black";
  manager01.cpf = '45645645445645';
  manager01.table = 1;
  manager01.password = 'aiuhas456456456';

  print('nome: ${manager01.name}');
  print('cpf: ${manager01.cpf}');
  print('mesa: ${manager01.table}');
  print('senha: ${manager01.password}');
  manager01.cameIn();
  manager01.cameOut();
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
        '${today.day.toString().padLeft(2, '0')}/${today.month.toString().padLeft(2, '0')}/${today.year.toString()}}';
    dateSlug +=
        '${today.hour.toString().padLeft(2, '0')}:${today.minute.toString().padLeft(2, '0')}:${today.second.toString().padLeft(2, '0')}';
    return dateSlug;
  }
}

class Adm {
  String password;
}

class Manager extends Person with Adm {
  int table;
}
