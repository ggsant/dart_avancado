import 'dart:io';
import 'dart:convert';

void main() {
  var zlib_comp = testCompress(zlib);
  var gzip_comp = testCompress(gzip);

  print('gzip ou zlib qual a melhor ??\r\n ');
  print('ZLIB: ${zlib_comp}');
  print('GZIP: ${gzip_comp}');
}

String generateData() {
  var data = '';

  for (var i = 0; i < 1000; i++) {
    data = data + 'gzip ou zlib qual a melhor ??\r\n ';
  }
  return data;
}

int testCompress(var codec) {
  var data = generateData();
  List original = utf8.encode(data);
  List compressed = codec.encode(data);
  List decompressed = codec.decode(data);

  print('Testando ${codec.toString()}');
  print('Original ${original.length}');
  print('Comprimido ${compressed.length}');
  print('Descomprimido ${decompressed.length}');

  print('');

  var decoded = utf8.decode(decompressed);
  assert(data == decoded);
  return compressed.length;
}
