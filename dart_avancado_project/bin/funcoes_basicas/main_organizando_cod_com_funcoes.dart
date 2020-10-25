import 'dart:io';

void main() {
  displayResult(askUser());
}

int askUser() {
  print('informe um numero:');

  return int.parse(stdin.readLineSync(), onError: (String err) {
    print('Tem certeza que "$err" é um numero?');
    return 0;
  });
}

void displayResult(int max) {
  double half = max / 2;

  for (int i = 1; i < max; i++) {
    print(i);

    if (i == half.round()) {
      print('Opa, estamos no meio da caminho');
    }
  }
}
