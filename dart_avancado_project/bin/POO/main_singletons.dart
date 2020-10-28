//* singleton é uma forma de criar uma classe sem que ela instancie objetos dela.
//* ela se torma uma classe estatica, ou seja ela se torna uma só, não sendo possivel criar cópias dela, igual a POO deixa fazer.

main() {
  Pessoa.instancie.name = 'Gabriela';
  print(Pessoa.instancie.name);

  var pessoa01 = Pessoa.instancie;
  var pessoa02 = Pessoa.instancie;

  pessoa01.name = 'Leandro';
  print(Pessoa.instancie.name);

  pessoa02.name = 'Creusa';
  print(Pessoa.instancie.name);
}

class Pessoa {
  static final Pessoa instancie = Pessoa.contrutorNomeado();
  String name;

  Pessoa.contrutorNomeado();
}
