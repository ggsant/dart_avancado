void main() {
  var year01 = Leap(2051);

  print('${year01.leapYear(year01.year)}');
}

class Leap {
  var year;

  Leap(this.year);

  String leapYear(var year) {
    if (year % 4 != 0) {
      return 'Não é bissexto';
    }
    if (year % 100 != 0 || year % 400 == 0) {
      return 'É bissexto';
    }
  }
}
