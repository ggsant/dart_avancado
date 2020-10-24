void main(List<String> args) {
  //* MAP - par chave e valor
  //* semelhante ao Json

  Map<int, String> ddds = Map();
  ddds[11] = 'São Paulo';
  ddds[19] = 'Campinas';
  ddds[21] = 'Rio de Janeiro';
  ddds[16] = 'São Carlos';
  print(ddds);

  Map<String, dynamic> person = Map();
  person['nome'] = 'Enzo';
  person['idade'] = 10;
  person['altura'] = 1.50;

  print(person);

  Map<String, String> people = Map<String, String>();
  // essa função putIfAbsent serve p add algo no map, mas somente se não existir, ou seja só podemos ter uma chave
  people.putIfAbsent('pai', () => 'Pedro');
  people.putIfAbsent('mae', () => 'Raissa');
  people.putIfAbsent('filho', () => 'Roberto');

  print(people);

  print('As chaves do mapa são: ${people.keys}');
  print('Os valores do mapa são: ${people.values}');
  print('O pai é: ${people['pai']}');
}
