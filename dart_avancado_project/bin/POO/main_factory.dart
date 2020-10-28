import 'package:dart_avancado_project/AnimalFactory.dart';

void main() {
  var animal1 = AnimalFactory();
  print(animal1.name);
  animal1.name = "jurema";
  print(animal1.name);

  var animal2 = AnimalFactory();
  print(animal2.name);

  print(AnimalFactory.intancia.name);
  AnimalFactory.intancia.name = 'puma';
  print(animal1.name); //
}
