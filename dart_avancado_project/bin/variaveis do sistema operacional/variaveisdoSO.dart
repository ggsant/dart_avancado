import 'dart:io';

void main() {
  print('SO: ${Platform.operatingSystem}');
  print('SO: ${Platform.version}');

  if (Platform.isLinux) {
    print('Rodando codigo no Linux da massa');
  } else if (Platform.isMacOS) {
    print('Rodando codigo no MacOs');
  } else if (Platform.isWindows) {
    print('Rodando codigo no Windows');
  } else {
    print('Rodando codigo');
  }
  print(
      '\n\n-------------------------------------------------------------------');
  print('Path: ${Platform.script.path}');
  print('Path: ${Platform.executable}');
  print(
      '\n\n-------------------------------------------------------------------');
  print('Variaveis de ambiente:');
  Platform.environment.keys.forEach((key) {
    print('${key} ${Platform.environment[key]}');
  });
}
