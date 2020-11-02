import 'package:dart_avancado_project/bd.dart' as bd;
// import 'package:mysql1/mysql1.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/connection/connection.dart';

void main() async {
  var conn = await bd.createConnection();

  await createTable(conn);
  await insertData(conn);
  await listData(conn);
  await updateData(conn);
  await removeData(conn);
  await dropTable(conn);
  await conn.close();
}

Future<void> dropTable(MySqlConnection conn) async {
  print('\n\n Removendo Tebela....');
  await conn.execute('DROP TABLE people');
}

Future<void> removeData(MySqlConnection conn) async {
  print('\n\n Removendo dados....');
  await conn.execute('DELETE from people');
}

Future<void> updateData(MySqlConnection conn) async {
  print('\n\nAtualizando Dados....');
  await conn.prepared('UPDATE people SET name = ? where id = ?', ['Gaby', 1]);
}

Future<void> listData(MySqlConnection conn) async {
  print('Listando dados');
  var results = await conn.execute('select * from people');

  await results.forEach((Row row) => print(
      'ID: ${row[0]}, Nome: ${row[1]}, Idade: ${row[2]}, Email: ${row[3]}'));
}

Future<void> insertData(MySqlConnection conn) async {
  print('Inserindo dados...');

  var data = [
    ['Gabriela', 'gabriela@teste.com', 24],
    ['Daniel', 'daniel@teste.com', 39],
    ['Rita', 'rita@teste.com', 60],
  ];

  await conn.preparedWithAll(
      'INSERT INTO people (name, email, age) values (?,?,?)', data);
  print('Dados inseridos com sucesso');
}

//* criando uma tabela

Future<void> createTable(MySqlConnection conn) async {
  print('------------------- Criando Tabela -------------------');
  await conn.execute(
      'CREATE TABLE IF NOT EXISTS people (id INTEGER NOT NULL auto_increment, name VARCHAR(255), age INTEGER, email VARCHAR(255), PRIMARY KEY (id))');
  print('Tabela criada com sucesso!!!!!!!');
}
