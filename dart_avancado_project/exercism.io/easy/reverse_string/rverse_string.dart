void main() {
  var palavra = ReverseString('amarelo');
  print(palavra.reverseString(palavra.word));
}

class ReverseString {
  String word;

  ReverseString(this.word);

  String reverseString(String word) {
    var value = word.split('').reversed.join('');
    return '${value}';
  }
}
