void main() {
  /**
   * Implements
   */

  Veiculo veiculo = new Veiculo();
  veiculo.printOla();
  print(veiculo.ola);

  Carro carro = new Carro();
  print(carro.chaveSecreta);
  carro.implementarSeguranca();
  
}

class Seguranca {
  String chaveSecreta = "chave";

  void implementarSeguranca() {
    print("Segurança feita com sucesso");
  }
}

class Base {
  String ola = "Olá";

  void printWelcome() {
    print("Welcome");
  }
}

class Veiculo implements Base {
  int velocidade = 10;
  bool isFuncionando = true;
  bool isFarolLigado = false;

  void printOla() {
    print("Seja bem vindo");
  }
  
  String ola = "Olá";

  void printWelcome() {
    print("Welcome");
  }
}

class Carro extends Veiculo implements Seguranca{
  int quantRodas = 4;
  
  @override
  String chaveSecreta = "nova chave";

  @override
  void implementarSeguranca() {
    print("Segurança feita com sucesso");
  }  
}

class Bike extends Veiculo {


}