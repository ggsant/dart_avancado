import 'dart:collection';

void main(List<String> args) {
  //* Fila - nada mais é do que uma coleção ordenada
  //* ela não tem index
  //* add ou remove do inicio ou do fim, nunca do meio
  //* utilização - controlar pessoas, acesso a determinados locais, entrada e saida de BD

  Queue items = Queue();
  items.add(1);
  items.add(2);
  items.add(3);
  items.add(4);
  print(items);
  items.addFirst(0);
  print(items);

  items.addLast(5);
  print(items);

  items.removeFirst();
  print(items);

  items.removeLast();
  print(items);
}
