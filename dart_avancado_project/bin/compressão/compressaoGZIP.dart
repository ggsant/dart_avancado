import 'dart:io';
import 'dart:convert';

void main() {
  String data = '';
  for (int i = 0; i < 100; i++) {
    data = data + 'Esse é um programa de compressao de zip\r\n';
  }

  //* dados originais -> lista
  List original = utf8.encode(data);
  print(original);

  //* dados comprimidos
  List comprimidos = gzip.encode(original);
  print(comprimidos);

  //* dados descomprimidos
  List descomprimidos = gzip.decode(comprimidos);
  print(descomprimidos);

  print('------------------------ Resultado----------------------');
  print('Original: ${original.length} bytes');
  print('Comprimido: ${comprimidos.length} bytes');
  print('Descomprimido: ${descomprimidos.length} bytes');

  String decoded = utf8.decode(descomprimidos);
  assert(data == decoded);

  print('---------Descomprimido decodificado ---------------');
  print(decoded);
}
