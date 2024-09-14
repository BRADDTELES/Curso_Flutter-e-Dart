void main() {
  // streams
  // contaInscricao().listen((val){
  //   print(val);
  // }, onDone: () {
  //   print("Terminamos de escutar");
  // });
  // print("Cheguei no final");

  stream.forEach(print);
}

/* MAIS INFORMAÇÕES SOBRE 'Stream' no canal do WebDutras */

// Stream<int> contaInscrito() async* {
//   for (int i = 1; i <= 10; i++) {
//     yield i;
//     await Future.delayed(const Duration(seconds: 1));
//   }
// }

final stream = Stream<int>.periodic(const Duration(seconds: 1), (count) => count * count).take(5);