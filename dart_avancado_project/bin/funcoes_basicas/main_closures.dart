void main() {
  funcaoClosure();
}
//* uma closure é uma função criada dentro de outra função

funcaoClosure() {
  var oi = (var nome) {
    var dizerAlgo = (var algo) => print('Olá $nome, $algo!');
    dizerAlgo('estou feliz! =) ');
  };
  oi('Gabriela');
}
