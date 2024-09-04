void main() {
  /* Polimorfismo */
  Animal gato = new Gato();
  gato.som();
  gato = Cachorro(); // gato pode receber o método Cachorro
  gato.som();

  Animal cachorro = Cachorro();
  cachorro.som();
}

class Animal {
  void som() {
    print("som de animal");
  }
}

class Gato extends Animal{
  @override
  void som() {
    print("MIAU!");
  }
}

class Cachorro extends Animal{
  @override
  void som() {
    print("AUAU!!!");
  }
}