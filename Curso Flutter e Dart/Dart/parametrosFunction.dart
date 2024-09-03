void main() {
  // Carro carro = Carro(); // desnecessario usar a palavra 'new'
  final carro = new Carro('vermelho', 4.15, 'Gol');

  print("Modelo: ${carro.modelo}");
  print(carro.cor);
  carro.cor = "azul";
  print("Tamanho: ${carro.tamanho}m");

  carro.ligar();
  print('Andando: ${carro.isAndando()}');
  print(carro.cor);

  carro.cor = null; // não é possivel alterar o valor de uma variavel com sinal de?
  print('Cor do carro: ${carro.cor}'); // Null Safety Error - Erro de Segurança com variaveis com sinal de?

}

class Carro {
  /* com o sinal de ? permite que a variavel inicialize nulo*/
  String? cor;
  double? tamanho;
  String? modelo;

  /* Funções com parãmetros posicionais */
  Carro(String cor, double tamanho, String modelo) {
    print(this.ligar);
    this.cor = cor;
    this.tamanho = tamanho;
    this.modelo = modelo;
  }
  // Carro(this.cor, this.tamanho, this.modelo); // 2º Alternativa (construtor curto)

  void ligar() {
    print('liguei');
  }

  bool isAndando() {
    return false;
  }
}