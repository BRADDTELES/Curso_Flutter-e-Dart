void main() {
  /* Records */

  // var retorno = getDados();
  // print(retorno);
  // final (idade, nome) = getDados();
  // print("Idade: $idade" + " nome: $nome");

  final pegaDados = getDados();
  print("Idade: ${pegaDados.idade} Nome: ${pegaDados.nome}");
  
}

// (int, String) getDados() {
//   return (15, "Bartolomeu");
// }

({ int idade, String nome }) getDados() {
  return (idade: 15, nome: "Bartolomeu");
}