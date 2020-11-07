void main() {
  var resistor01 = ResistorColor('amarelo', 'preto', 'vermelho', 'verde');
  var resistor02 = ResistorColor('violeta', 'laranja', 'verde', 'vermelho');

  print(
      'O Resistor é do tipo ${resistor01.fromZeroToThreeColor(resistor01.colorOne)}${resistor01.fromZeroToThreeColor(resistor01.colorTwo)}');

  print(
      'O Resistor é do tipo ${resistor02.fromZeroToThreeColor(resistor02.colorOne)}${resistor02.fromZeroToThreeColor(resistor02.colorTwo)}');
}

class ResistorColor {
  String colorOne;
  String colorTwo;
  String colorThree;
  String colorFour;

  ResistorColor(
    this.colorOne,
    this.colorTwo,
    this.colorThree,
    this.colorFour,
  );

  String fromZeroToThreeColor(String color) {
    switch (color) {
      case 'preto':
        return '0';
        break;
      case 'marrom':
        return '1';
        break;
      case 'vermelho':
        return '2';
        break;
      case 'laranja':
        return '3';
        break;
      case 'amarelo':
        return '4';
        break;
      case 'verde':
        return '5';
        break;
      case 'azul':
        return '6';
        break;
      case 'violeta':
        return '7';
        break;
      case 'cinza':
        return '8';
        break;
      case 'branco':
        return '9';
        break;
      default:
        return '-1';
        break;
    }
  }
}
