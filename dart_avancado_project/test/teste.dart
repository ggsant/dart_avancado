import 'package:test/test.dart';

void main() {
  group('String', () {
    test('String.split() divide a string no delimitador', () {
      String texto = 'Isso,é,um,teste';

      expect(texto.split(','), equals(['Isso', 'é', 'um', 'teste']));
    });

    test('String.trim() remove os espaços no inicio e no fim da string', () {
      String text = ' casa ';

      expect(text.trim(), equals('casa'));
    });
  });

  group('inteiros', () {
    test('.remainder() retorna o resto de uma divisao', () {
      expect(17.remainder(3), equals(2));
    });
    test('.toRadixString retorna um hex string', () {
      expect(11.toRadixString(16), equals('b'));
    });
  });
}
