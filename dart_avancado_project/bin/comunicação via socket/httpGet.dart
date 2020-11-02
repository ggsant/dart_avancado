import 'package:http/http.dart' as http;

void main() async {
  var url = 'http://dartlang.org/';
  var response = await http.get(url);
  print('O servidor respondeu com o codigo de status: ${response.statusCode}');
  print('O corpo da requisição é: \n\n\n ${response.body}');
}
