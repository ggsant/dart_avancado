void main() {
  try {
    //* tentar fazer isso
    int age;
    var dogYears = 8;

    if (dogYears != 7) {
      throw Exception('Os anos do cachorro deve ser 7');
    }

    if (age == null) {
      throw NullThrownError();
    }

    print(age * dogYears);
  } on NullThrownError {
    print('O valor é nulo!');
  } on NoSuchMethodError {
    print(
        'Desculpe, mas, o método não foi encontrado! Verifique se não há algum erro nos números');
  } catch (e) {
    //* se nao der certo o catch captura o erro
    print('OOOOOPSSSSSS houve um erro com a mensagem: \n\n\n${e.toString()}');
  } finally {
    //* executado quando termina
    print('Pronto, executado');
  }
}
