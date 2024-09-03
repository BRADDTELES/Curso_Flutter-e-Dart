void main() {
  // Carro carro = Carro(); // desnecessario usar a palavra 'new'
  final carro = new Carro();

  carro.modelo = "gol";
  print("Modelo: " + carro.modelo);
  print("Cor: " + carro.cor);
  carro.cor = "azul";
  print("Mudança de Cor: " + carro.cor);
  carro.ligar();
  print("Andando: " + carro.isAndando().toString());

  print("------------------------------------------");
  
  final savero = Carro();
  savero.modelo = "savero";
  print("Modelo: " + savero.modelo);
  savero.cor = "preto";
  print("Cor: " + savero.cor);
  savero.ligar();
  print("Andando: " + savero.isAndando().toString());
}

class Carro {
  // Classes possui variavéis (propriedades) e métodos (funções)
  String cor = "Branco";
  double tamanho = 4.15;
  String modelo = '';

  void ligar() {
    print('liguei');
  }

  bool isAndando() {
    return true;
  }
}