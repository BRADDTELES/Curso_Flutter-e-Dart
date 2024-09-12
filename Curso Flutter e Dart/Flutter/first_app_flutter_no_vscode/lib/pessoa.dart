class Pessoa {
  String nome;
  int idade;
  final String _cpf = '';

  Pessoa(this.nome, this.idade);

  String getCpf() {
    return _cpf;
  }
}