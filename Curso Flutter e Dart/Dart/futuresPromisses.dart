void main() async {
  /* Future (Promises JS) */
  Future myFuture = Future(() {
    print("estamos dentro de nossa função do futuro");
    return 15;
  }).then((val) => print("retorno: $val"));
  
  print(myFuture);
  // minhaFuncao().then((val) => print(val));
  final res = await minhaFuncao();
  print(res);

  print("chegamos ao final");

}



Future<int> minhaFuncao() async {
  print("Estou dentro função externa");
  await Future.delayed(Duration(seconds: 3));
  return 5;
}