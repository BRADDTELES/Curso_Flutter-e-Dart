void main() {
  
  const carro = Carro(
    cor: 'vermelho', 
    tamanho: 4.15, 
    modelo: 'Gol'
  );

  print("Modelo: ${carro.modelo}");
  print("Cor: ${carro.cor}");
  print("Tamanho: ${carro.tamanho}m");
  carro.ligar();
  print('Andando: ${carro.isAndando()}');

}

class Carro {

  final String cor;
  final double tamanho;
  final String modelo;

  const Carro({ 
    required this.cor, 
    required this.tamanho, 
    required this.modelo 
  });

  void ligar() {
    print('liguei');
  }

  bool isAndando() {
    return false;
  }

}