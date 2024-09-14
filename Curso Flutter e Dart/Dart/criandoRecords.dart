void main() {
  /* records */

  // final records = (1.8, true, 5);
  // print(records.$2);

  // final pessoa = (id: 1, nome: "Ewerton", idade: 28);
  // print(pessoa.nome);

  ({int x, int y, int z}) coordA = (x: 154, y: 21, z: 450);
  ({int x, int y, int z}) coordB = (x: 154, y: 21, z: 450);

  if(coordA == coordB) {
    print("iguais");
  }
}
