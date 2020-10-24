void main(List<String> args) {
  //* é tipo uma lista, mas tem algumas particularidades
  //* o set é uma coleção desordenada
  //* não conseguiremos indexar nada dele
  //* não aceita valores duplicados

  Set<int> numbers = Set<int>();
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  numbers.add(4);

  print(numbers);
}
