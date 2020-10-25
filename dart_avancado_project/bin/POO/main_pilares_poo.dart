class Person {
  String name;
  int age;
  double heigth;

  void birthday() {
    age++;
  }

  void sleep() {
    print('$name is sleeping');
  }
}

void main() {
  Person personOne = Person();
  personOne.name = "Gabriela";
  personOne.age = 24;
  personOne.heigth = 1.75;

  print(personOne.name);
  print(personOne.age);
  print(personOne.heigth);

  personOne.sleep();
  personOne.birthday();

  print(personOne.age);

  Person personTwo = Person();
  personTwo.name = "Leandro";
  personTwo.age = 27;
  personTwo.heigth = 1.77;

  print(personTwo.name);
  print(personTwo.age);
  print(personTwo.heigth);

  personTwo.sleep();
  personTwo.birthday();

  print(personOne.age);
}
