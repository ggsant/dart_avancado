void main() {
  var twoFer01 = TwoFer('Gabriela');
  print('${twoFer01.twoFer()}');
  var twoFer02 = TwoFer('João');
  print('${twoFer02.twoFer()}');
  var twoFer03 = TwoFer('cris');
  print('${twoFer03.twoFer()}');
  var twoFer04 = TwoFer('kaito');
  print('${twoFer04.twoFer()}');
}

class TwoFer {
  String name;

  TwoFer(this.name);

  String twoFer() {
    return 'One for $name, one for me!!';
  }
}
