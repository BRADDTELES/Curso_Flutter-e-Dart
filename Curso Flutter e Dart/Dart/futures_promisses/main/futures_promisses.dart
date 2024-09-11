import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  var url = Uri.https("jsonplaceholder.typicode.com", '/users/1');

  final res = await http.get(url);
  print("Status: ${res.statusCode}");
  String nome = jsonDecode(res.body)['name'];
  String sobrenome = jsonDecode(res.body)['username'];
  print(
      "ID: ${jsonDecode(res.body)['id']}, Nome Completo: $nome $sobrenome, mora na cidade: ${jsonDecode(res.body)['address']['city']} e trabalha na Empressa: ${jsonDecode(res.body)['company']['catchPhrase']}");
}

void get() {
  print("get codigo");
}

Future<int> minhaFuncao() async {
  print("Estou dentro função externa");
  await Future.delayed(const Duration(seconds: 3));
  return 5;
}
