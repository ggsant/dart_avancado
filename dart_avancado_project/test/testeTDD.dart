import 'package:dart_avancado_project/calculadora_aprovacao.dart';
import 'package:test/test.dart';

void main() {
  test('Verifica se a calculadora funciona corretamente para aprovaçao.', () {
    expect(estaAprovado(6, 8, 7), true);
  });

  test('Verifica se a calculadora funciona corretamente para reprovaçao.', () {
    expect(estaAprovado(1, 3, 7), false);
  });
}
