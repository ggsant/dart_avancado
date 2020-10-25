import 'package:http/http.dart' as http;

void main(List<String> args) {
  var url = 'https://www.google.com/';

  http.get(url).then((response) {
    print('Codigo de status da requisição: ${response.statusCode}');
    print('Response body: ${response.body}');
  });
}
