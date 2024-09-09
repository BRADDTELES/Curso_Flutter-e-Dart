void main() {
  /* Map<String, int> nome = { chave: valor, 'chave': 'valor' } */
  
/*   Map<String, int> populacoes = {
    'SP': 100000,
    'RJ': 50000,
    'MG': 150000
  };

  populacoes.addAll({
    'AM': 40000,
    'PE': 3000,
    'PR': 80000
  }); */

/*   for(int i = 0; i < populacoes.length; i++) {
    /* print(populacoes.keys.toList()[i]); */
    print(populacoes.values.toList()[i]);
  } */

/*   populacoes.forEach((keys, val) {
    print('$keys: $val');
  }); */
/*   print(populacoes);
  populacoes.remove('AM');
  print(populacoes);
 */

  Map<String, int> alunos = {'Matematica': 10, 'Portugues': 7, 'Ciencias': 8};

  /* Utilizando o Map (Object) dentro do List */
  List<Map<String, int>> notas = [
    alunos,
    {'Matematica': 8, 'Portugues': 7, 'Ciencias': 7},
    {'Matematica': 6, 'Portugues': 5, 'Ciencias': 4}
  ];

/*   notas.map((e) {
    print(e);
  }).toList(); */

  notas.map((e) {
    e.forEach((key, val) {
      print('$key: $val');
    });
  }).toList();
}

class Estudante {
  String nome;
  int idade;

  Estudante(this.nome, this.idade);

  @override
  String toString() => "$nome";
}
