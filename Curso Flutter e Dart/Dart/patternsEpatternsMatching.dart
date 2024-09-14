void main() {
  // final list = [5, 4, 3, 2, 1];
  // final [a, b, ...c] = list;

  // print("$a $b $c");

  // final json = {
  //   "id": 1,
  //   "nome": "titanic",
  //   "sinopse": "um navio que afundou na agua batendo no iceberg",
  //   "ano": 1993
  // };

  // final {'id': id, 'nome': nome, 'sinopse': sinopse} = json;
  // print(id);
  // print(nome);
  // print(sinopse);
  // if (json
  //     case {'id': int id, 'nome': String nome, 'sinopse': String sinopse}) {
  //   print(id);
  //   print(nome);
  //   print(sinopse);
  // } else {
  //   print("json mau-formatado");
  // }
  // switch (json) {
  //   case {'id': int id, 'nome': String nome, 'sinopse': String sinopse}:
  //     print(id);
  //     print(nome);
  //     print(sinopse);
  //   default:
  //     print("json mau-formatado");
  // }

  // final pessoa = Pessoa("Danillo", 34);
  // print(pessoa.nome);
  // print(pessoa.idade);
  // final Pessoa(:nome, :idade) = pessoa;
  // print(nome);
  // print(idade);
  // final Pessoa(idade:age, nome:name) = pessoa;
  // print(name);
  // print(age);

  // List<String> listPalavras = ["OceaNo", "Floresta"];

  // String key = "12345";
  // switch (listPalavras) {
  //   case ["Oceano" || "oceano" || "OceaNo", "Floresta"] when key == "1234":
  //     print("achei");
  //   default:
  //     print("Não achado");
  // }

  int monitor = 0;
  int ultMonitor = 1;

  final texto = switch (ultMonitor) {
    0 => "primeiro monitor",
    1 when monitor == ultMonitor => "segundo monitor",
    _ => "nenhum"
  };

  print(texto);
}

// class Pessoa {
//   final String nome;
//   final int idade;

//   Pessoa(this.nome, this.idade);
// }
