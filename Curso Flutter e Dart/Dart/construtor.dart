void main() {
  // Carro carro = Carro(); // desnecessario usar a palavra 'new'
  final carro = new Carro("vermelho", 3.80, "golf");

  print("Modelo: " + carro.modelo);
  print("Cor: " + carro.cor);
  carro.cor = "verde";
  print("Mudança de Cor: " + carro.cor);
  carro.ligar();
  print("Andando: " + carro.isAndando().toString());

}

class Carro {
  String cor;
  double tamanho;
  String modelo;

  /* Construtor */
  // Carro(this.cor, this.tamanho, this.modelo) {
  //   print("classe inicializada");
  // }
  Carro(this.cor, this.tamanho, this.modelo); // 2º Alternativa (construtor curto)

  void ligar() {
    print('liguei');
  }

  bool isAndando() {
    return true;
  }
}