void main() {

  Carro carro = Carro(
    cor: 'vermelho', 
    tamanho: 4.15, 
    modelo: 'Gol'
  );

  print("Modelo: ${carro.modelo}");
  print("Cor: ${carro.cor}");
  print("Tamanho: ${carro.tamanho}m");
  carro.ligar();
  print('Andando: ${carro.isAndando()}');
  carro._ano;
  carro._motor;
  print('Ano: ${carro._ano}');
  print('Motor: ${carro._motor}');
  print('Tamanho do carro: ${carro.getTamanho()}m²');
  print('Altura: ${carro.altura}m');
  print('Largura: ${carro.largura}m');
  print('Comprimento: ${carro._comprimento}m');
  carro.modificarComprimento(6);
  print('Comprimento: ${carro._comprimento}m');

}

class Carro {

  final String cor;
  final double tamanho;
  final String modelo;

  final int _ano = 2009; // 'private' para o sinal de underline (_)
  final double _motor = 1.0; 

  final int _altura = 2;
  final int _largura = 4;
  int _comprimento = 5;

  /* Getters */
  int get altura => _altura; // 1º metodo Arrow Function
  int get largura { return _largura; } // 2º metodo - também usavél

  void modificarComprimento(int comprimento) {
    _comprimento = comprimento;
  }

  Carro({ 
    required this.cor, 
    required this.tamanho, 
    required this.modelo 
  });

  int getTamanho() {
    return _altura * _largura;
  }

  void ligar() {
    print('liguei');
  }

  bool isAndando() {
    return false;
  }

}