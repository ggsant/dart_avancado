import 'package:mysql1/mysql1.dart';

createConnection() async {
  var settings = ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    db: 'DartDB',
  );

  return await MySqlConnection.connect(settings);
}
