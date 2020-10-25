void main() {
  try {
    //* tentar fazer isso
    int age;
    int dogYears = 7;

    print(age * dogYears);
  } catch (e) {
    //* se nao der certo o catch captura o erro
    print('OOOOOPSSSSSS houve um erro com a mensagem: \n\n\n${e.toString()}');
  } finally {
    //* executado quando termina
    print('Pronto, executado');
  }
}
