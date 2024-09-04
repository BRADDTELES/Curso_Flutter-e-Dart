void main() {

  Carro carro = Carro();
  carro.printQuantRodas();
  print(carro.velocidade);
  carro.aumentarVelocidade();
  print(carro.velocidade);

  print(carro.ola);

  // Bike bike = Bike();
  // bike.printQuantRodas();

  // Veiculo gol = Bike();
  // print((gol as Carro).quantRodas);

  // dynamic valor = 10;
  // print((valor as String).length);
}

class Base {
  String ola = "Olá";

  void digaOla() {
    print("Hello");
  }
}

class Veiculo extends Base {
  int velocidade = 10;
  bool isFuncionando = true;
  bool isFarolLigado = false;

  void aumentarVelocidade() {
    velocidade += 10;
  }
}

class Carro extends Veiculo{

  int quantRodas = 4;
  
  void printQuantRodas() {
    print(quantRodas);
  }

  @override
  void aumentarVelocidade() {
    velocidade += 30;
  }
  
}

class Bike extends Veiculo {

  // int quantRodas = 2;
  
  // void printQuantRodas() {
  //   print(quantRodas);
  // }

}