import 'package:sqljocky5/sqljocky.dart';
import 'package:dart_avancado_project/bd.dart' as bd;

void main() async {
  var conn = await bd.createConnection();
  await createTables(conn);

  var trans = await conn.begin();

  try {
    await trans.execute(
        'insert into people (id, name, email, age) values (1, "Leonardo", "leo@leo.com", 23)');
    await trans.execute('insert into horse (person_id) values (1)');
    await trans.commit();
  } catch (e) {
    print(e);
    await trans.rollback();
  }

  await conn.close();
}

Future<void> createTables(MySqlConnection conn) async {
  await conn.execute(
      'CREATE TABLE IF NOT EXISTS people (id INTEGER NOT NULL auto_increment, name VARCHAR(255), age INTEGER, email VARCHAR(255), PRIMARY KEY (id))');
  await conn.execute(
      'CREATE TABLE IF NOT EXISTS horse (id INTEGER NOT NULL auto_increment, person_id INTEGER NOT NULL, PRIMARY KEY (id), FOREIGN KEY (person_id) REFERENCES people(id))');
}
