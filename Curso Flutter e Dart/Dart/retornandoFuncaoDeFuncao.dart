void main() {

  final pegaFuncao = getDados();
  pegaFuncao(); // Chamando a função de função

  () {
    print("outro texto");
  }();
}

Function getDados() {
  return () {
    print("Texto");
  };
}
