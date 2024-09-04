void main() {
  /* Abstração */
  Animal gato = Gato();
  Animal cachorro = Cachorro();
  
  gato.som();
  cachorro.som();

  (gato as Gato).isBigode(); // Neste 1º método estou 'forçando' a instanciação (não recomendado)
  cachorro.cheiroPotente(); // 2º metodo: fazenda a definição do método na classe Animal

}

abstract class Animal {
  void som();

  // void isBigode(){}  // forma correta
  void cheiroPotente(){}
}

class Gato extends Animal{
  @override
  void som() {
    print("Gato faz MIAU!");
  }

  void isBigode() {
    // Método específico do gato
    print("Gato tem bigode");
  }
}

class Cachorro extends Animal{
  @override
  void som() {
    print("Cachorro faz AUAU!!!");
  }

  void cheiroPotente() {
    // Método específico do cachorro
    print("Cachorro cheira e fareja");
  }
}