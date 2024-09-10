void main() {
  // streams
  contaInscricao().listen((val){
    print(val);
  }, onDone: () {
    print("Terminamos de escutar");
  });
  print("Cheguei no final");
}

Stream<int> contaInscricao() async* {
  for (int i = 1; i <= 10; i++) {
    yield i;
    await Future.delayed(const Duration(seconds: 1));
  }
}