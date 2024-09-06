void main() {
  List<String> listNomes = ["João", "Maria", "Bia"];
  print(listNomes[0]);
  List<Estudante> listEstudantes = [
    Estudante("Ewerton", 20),
    Estudante("Maria", 25),
    Estudante("João", 20),
  ];

  // final listFiltrada = [];

  // for(final estudante in listEstudantes) {
  //   if(estudante.idade <= 20) {
  //     listFiltrada.add(estudante);
  //   }
  // }
  // print(listFiltrada);


  final listFiltrada = listEstudantes.where((estudante) => estudante.idade <= 20).toList();
  print(listFiltrada);
  listEstudantes.add(Estudante("Bia", 18));
  print(listEstudantes);
  listEstudantes.removeAt(1);
  print(listEstudantes);

}

class Estudante {
  String nome;
  int idade;

  Estudante(this.nome, this.idade);

  @override
  String toString() => "$nome";
}