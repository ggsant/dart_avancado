/*
* sempre que criamos uma classe, nós modemos instancia-la.
* static em uma classe é algo que não muda
* é algo da classe mãe, não conseguiremos muda-la 
*/

void main() {
  // var circle = Circle();
// print(circle.pi); //* da erro pq membros staticos nao tem getter nem setters
  print(Circle.pi); //* nao precisamos nem instanciar o obj para acessar
  // Circle.pi = 9.14;
  // print(Circle.pi);
  Circle.calculateArea();
}

class Circle {
  static const double pi =
      3.14; //* sempre bom colocar static com const para evirar que mude em outros lugares

  static void calculateArea() {
    print('codigo para calcular area');
  }
}
