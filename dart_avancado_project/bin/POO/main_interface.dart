//* O dart não tem uma sintaxe especial para implementar interfaces
//* uma interface em dart é uma classe
//* é obrigatório reescrever todos os metodos implementados na classe superior

void main() {
  var tv = SmartTV();
  tv.volumeUp();
  tv.volumeDown();
  tv.internet();
}

// "interface"

class Television {
  void volumeUp() {}

  void volumeDown() {}
}

//* para mostrar que é uma interface utilizamos o implements
class SmartTV implements Television {
  bool netFlix = true;

  void volumeUp() {
    print('aumenta o volume');
  }

  void volumeDown() {
    print('abaixa o volume');
  }

  void internet() {
    print('Tem internet');
  }
}
