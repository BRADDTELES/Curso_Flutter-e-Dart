import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  var url = Uri.https("jsonplaceholder.typicode.com", '/users/1');

  http.get(url).then((value) {
    print(jsonDecode(value.body)['name']);
  }).catchError((error) { print("um erro aconteceu"); });

  // try {
  //   final res = await http.get(url);
  //   print(jsonDecode(res.body)['id']);
  // } catch (e) {
  //   print("aconteceu um error");
  // }

  // final res = await http.get(url);
  // print("Status: ${res.statusCode}");
  // String nome = jsonDecode(res.body)['name'];
  // String sobrenome = jsonDecode(res.body)['username'];
  // print(
  //     "ID: ${jsonDecode(res.body)['id']}, Nome Completo: $nome $sobrenome, mora na cidade: ${jsonDecode(res.body)['address']['city']} e trabalha na Empressa: ${jsonDecode(res.body)['company']['catchPhrase']}");

  print('Acabou');
}

void get() {
  print("get codigo");
}

Future<int> minhaFuncao() async {
  print("Estou dentro função externa");
  await Future.delayed(const Duration(seconds: 3));
  return 5;
}
