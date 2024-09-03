void main() {
  // Carro carro = Carro(); // desnecessario usar a palavra 'new'
  final carro = new Carro('vermelho', 4.15, 'Gol');

  print("Modelo: ${carro.modelo}");
  print("Cor: ${carro.cor}");
  print("Tamanho: ${carro.tamanho}m");
  carro.ligar();
  print('Andando: ${carro.isAndando()}');

  // carro.cor = "azul"; // ERROR
  print("Mudou de cor: ${carro.cor}");

}

class Carro {
  /* Classes Imutáveis */
  final String cor;
  final double tamanho;
  final String modelo;

  Carro(this.cor, this.tamanho, this.modelo); // 2º Alternativa (construtor curto)

  void ligar() {
    print('liguei');
  }

  bool isAndando() {
    return false;
  }
}