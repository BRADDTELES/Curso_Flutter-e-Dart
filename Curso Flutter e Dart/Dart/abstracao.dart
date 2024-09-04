void main() {
  /* Abstração */
  Animal gato = new Gato();
  gato.som();
  gato = Cachorro(); // gato pode receber o método Cachorro
  gato.som();

  Animal cachorro = Cachorro();
  cachorro.som();
}

abstract class Animal {
  void som();
  void isBigode();
  void cheiroPotente();
}

class Gato extends Animal{
  @override
  void som() {
    print("MIAU!");
  }

  void isBigode() {
    // Método específico do gato
    print("Gato tem bigode");
  }
}

class Cachorro extends Animal{
  @override
  void som() {
    print("AUAU!!!");
  }

  void cheiroPotente() {
    // Método específico do cachorro
    print("Cachorro cheira e fareja");
  }
}