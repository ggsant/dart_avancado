import 'package:http/http.dart' as http;

void main() async {
  var url = 'http://httpbin.org/post';
  var response = await http.post(url, body: 'nome=Gabi&idade=24');
  print('O servidor respondeu com o codigo de status: ${response.statusCode}');
  print('O corpo da requisição é: \n\n\n ${response.body}');
}
