void main() {
  /* Sets não permite repetição */
  
  final estudante = Estudante("Outro", 22);

  Set<Estudante> listEstudantes = {
    Estudante("Ewerton", 20),
    Estudante("Maria", 25),
    Estudante("João", 20),
    estudante,
    estudante,
    estudante,
  };

  print(listEstudantes);

}

class Estudante {
  String nome;
  int idade;

  Estudante(this.nome, this.idade);

  @override
  String toString() => "$nome";
}