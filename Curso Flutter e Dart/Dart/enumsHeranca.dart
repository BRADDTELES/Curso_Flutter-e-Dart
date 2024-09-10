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
  programacao(3500.90),
  matematica(3400),
  portugues(3450.72);

  final double salario;
  const MateriasProfessor(this.salario);
}

class Professor {
  final String nome;
  final MateriasProfessor materia;

  Professor(this.nome, this.materia);

  void verificacao() {
    print("${materia.name} = ${materia.salario}");
    // switch (materia) {
    //   case MateriasProfessor.programacao :
    //     print("Professor de programação com salário de ${materia.salario}");
    //   case MateriasProfessor.matematica :
    //     print("Professor de matemática com salário de ${materia.salario}");
    //   case MateriasProfessor.portugues :
    //     print("Professor de português com salário de ${materia.salario}"); 
    // }
  }
}