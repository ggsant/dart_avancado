void main(List<String> args) {
  //* tipo: List
  //* list no dart é tipo o array em outras linguagens

  List list = [1, 2, 3, 4];

  //* itemns em uma lista:
  print('Tamanho da lista: ${list.length}');
  //* pegar um item da lista
  print('Primeiro item: ${list[0]}');
  print('Forma mais verbosa de pegar um itrem na lista ${list.elementAt(2)}');

  //* ao invés de criar uma lista ja atribuindo de cara o que tem nela, nos podemos criar um objeto dessa lista
  //* aqui teremos uma lista generica com varios tipos
  List things = List();
  things.add(1);
  things.add('Computador');
  things.add(true);

  print(things);

  //* para especificar que a lista tem um tipo determinado:
  List<int> numbers = List<int>();
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  print(numbers);

  //* list every - ele varre cada elemento da lista aplicando o operador lógico E

  //* para cada elemento ele testa se é vdd ou falso

  //* Elemento1 && Elemento2 && Elemento3 ...

  List<int> inteiros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  bool resultado = inteiros.every((result) => result > 0);
  bool resultado2 = inteiros.every((result2) => result2 > 5);
  print(resultado);
  print(resultado2);

  List<String> textos = ['gabriela', 'cachorro', 'programacao', 'dart'];
  bool resultadoTexto = textos.every((texto) => texto.contains('a'));
  print(resultadoTexto);
  bool resultadoTexto2 = textos.every((texto2) => texto2.contains('u'));
  print(resultadoTexto2);

  //* listas expandidas
  //* Vamos criar uma lista de listas ou seja uma matriz =)
  var lista = [
    [0, 1, 2],
    [3, 4, 5],
  ];

//* o toList convert o iteravel em uma lista novamente, se não o programa quebra
  List<dynamic> listaExpandida = lista.expand((elemento) => elemento).toList();
  print(listaExpandida);

  List<num> numeros = [1.245, 456, 6.25, 5645, 10.755];
  List<int> inteiross = [1, 3, 5, 6, 7, 8, 4, 6, 58, 36, 56, 486, 3];
  List<double> doubles = [1.2, 1.5, 7.9];

  List<dynamic> listaDinamica = [];
  //* temos tres formas de transformar as tres primeiras listas em uma só:
  //* 1) concatenando
  listaDinamica = numeros + inteiros;
  print(listaDinamica);
  //* 2) encadear usando o operador ..
  listaDinamica = []
    ..addAll(inteiross)
    ..addAll(numeros)
    ..addAll(doubles)
    ..addAll(listaExpandida);
  print(listaDinamica);

  //* Reduce com listas - serve para comparar elementos da coleção e retorna um unico elemento resultante disso

  List<int> numeroPares = List.generate(10, (i) => i * 2);
  print(numeroPares);

  int resultReduce = numeroPares.reduce((anterior, atual) {
    print('$anterior,$atual');
    return anterior + atual;
  });

  print(resultReduce);

  //* list where - conseguimos aplicar condições e ele retorna apenas os elementos que retornam essas condições de filtros

  List<int> idade = [5, 14, 13, 17, 16, 74, 28, 37, 49, 51, 69, 73, 86, 95];
  List<dynamic> listDinamica = ['gabi', 24, 1.75];
  print(listDinamica.where((element) => element is int).toList());

  print(idade.where((element) => element is int).toList());

  print(idade.where((element) => element > 18).toList());
}
