void main() {
  // Retornar 2 valores em uma Função
  var pegueiFuncao = getNumero();

  print(pegueiFuncao.runtimeType);
  print(pegueiFuncao.$2);
}

(int, String, bool, double, String) getNumero() {
  return (150, "String Retornada", false, 5.7, "Tipo");
}