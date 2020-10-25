void main(List<String> args) {
  //* For simples
  List people = ['Leonardo', 'Gabriela', 'Paulo', 'George', 'Laura'];

  print(people);

  for (int i = 0; i < people.length; i++) {
    print('Pessoa: $i é ${people[i]}');
  }
  print('----------------------------------------------------------------');

  //* For each

  people.forEach((person) {
    print(person);
  });
  print('----------------------------------------------------------------');

  //* com arrow function:

  people.forEach((person) => print(person));
  print('----------------------------------------------------------------');

  //* For in - usamos quando nao queremos nada com os indices

  List frutas = ['maça', 'laranja', 'mamao', 'abacaxi', 'uva'];

  for (String fruta in frutas) {
    print(fruta);
  }
}
