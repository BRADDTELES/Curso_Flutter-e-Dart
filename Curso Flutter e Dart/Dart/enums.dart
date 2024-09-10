void main() {
  /* Enums */

  final professor1 = Professor("Ewerton", MateriasProfessor.programacao);
  final professor2 = Professor("João", MateriasProfessor.matematica);
  final professor3 = Professor("João", MateriasProfessor.portugues);

  professor1.verificacao();
  professor2.verificacao();
  professor3.verificacao();
}

enum MateriasProfessor {
  programacao,
  matematica,
  portugues
}

class Professor {
  final String nome;
  final MateriasProfessor materia;

  Professor(this.nome, this.materia);

  void verificacao() {
    switch (materia) {
      case MateriasProfessor.programacao :
        print("Professor de programação");
      case MateriasProfessor.matematica :
        print("Professor de matemática");
      case MateriasProfessor.portugues :
        print("Professor de português"); 
    }
  }
}