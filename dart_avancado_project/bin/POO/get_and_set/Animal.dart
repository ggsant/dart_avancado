import 'package:dart_avancado_project/animal.dart';

main(List<String> arguments) {
  Animal dog = new Animal('Suzi', 1);
  dog.name = 'fiddo';
  print(dog.name);

  print('Antes do setter ${dog.age}'); // getter
  dog.age = 4;
  print('Depois do setter ${dog.age}'); //getter
}
