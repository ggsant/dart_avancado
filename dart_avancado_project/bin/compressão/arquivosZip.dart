import 'dart:io';
import 'package:archive/archive.dart';
import 'package:path/path.dart' as p;

void main() {
  List<String> files = List<String>();

  Directory.current.listSync().forEach((FileSystemEntity fse) {
    if (fse.statSync().type == FileSystemEntityType.file) {
      files.add(fse.path);
    }
  });
  String zipFile = "${Directory.current.path}/comprimido.zip";

  zip(files, zipFile);

  unzip(zipFile, '${Directory.current.path}/descomprimido');
}

void zip(List<String> files, String file) {
  Archive archive = Archive();

  files.forEach((String path) {
    File file = File(path);

    ArchiveFile archiveFile = ArchiveFile(
        p.basename(path), file.lengthSync(), file.readAsBytesSync());
    archive.addFile(archiveFile);
  });

  ZipEncoder encoder = ZipEncoder();
  File f = File(file);
  f.writeAsBytesSync(encoder.encode(archive));

  print("comprimido com sucesso");
}

void unzip(String zip, String path) {
  File file = File(zip);
  Archive archive = ZipDecoder().decodeBytes(file.readAsBytesSync());

  archive.forEach((ArchiveFile archiveFile) {
    File file = File(path + '/' + archiveFile.name);
    file.createSync(recursive: true);
    file.writeAsBytes(archiveFile.content);
  });

  print('Descompimido');
}
