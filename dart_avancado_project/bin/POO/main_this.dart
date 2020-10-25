class Person {
  int age = 18;

  int compareFriendsAges(int age) {
    return this.age -
        age; //* o this indica que é um parametro da classe e nao do metodo, ou do escopo local
  }
}

void main() {
  Person person = Person();

  print(person.compareFriendsAges(12));
}
