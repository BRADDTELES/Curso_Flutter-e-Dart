void main() {
  /**
   * Classes Abstract - define um contrato com a classe para outra classe
   */

  Veiculo veiculo = new Veiculo();
  veiculo.printOla();
  print(veiculo.ola);

  Carro carro = new Carro();
  print(carro.chaveSecreta);
  carro.implementarSeguranca();

  // Seguranca seguranca = Seguranca(); // Classes abstratas não podem ser instanciadas.
  Seguranca seguranca = new Carro(); // CORREÇÃO: criando uma instância (Seguranca) de um subtipo (Carro) concreto.
  print(seguranca.chaveSecreta);
  
}

abstract class Seguranca {
  String get chaveSecreta;

  void implementarSeguranca();
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
  
  
  String chaveSecreta = "nova chave";

  // void implementarSeguranca(); // ERRADO: *Classes concretas não podem conter membros abstratos.

  void implementarSeguranca() {
    print("Segurança feita com sucesso");
  }  
}

class Bike extends Veiculo {


}