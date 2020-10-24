void main(List<String> args) {
  // Constantes
  // temos ctes em tempo de execução (geralmente POO)

  // cria uma cte em tempo de compilação, ou seja o valor está no codigo, e quando o código for compilado ele ja criará essa cte na memoria, sem precisar de uma interação.
  const pi = 3.14;
  print('O valor de pi é $pi');

  // final é uma cte em tempo de execução
  final gabriela = Pessoa();
  print(gabriela);
}

class Pessoa {}
