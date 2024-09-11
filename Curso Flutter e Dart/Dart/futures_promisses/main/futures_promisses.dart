import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.https("jsonplaceholder.typicode.com", '/users');

  final res = await http.get(url);
  print(res.statusCode);
}

void get() {
  print("get codigo");
}

Future<int> minhaFuncao() async {
  print("Estou dentro função externa");
  await Future.delayed(Duration(seconds: 3));
  return 5;
}