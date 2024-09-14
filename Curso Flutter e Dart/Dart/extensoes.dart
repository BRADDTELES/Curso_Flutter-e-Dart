void main() {
  String frase = "eu vou me esforçar para aprender flutter";
  String nome = "danillo";
  
  frase = frase[0].toUpperCase() + frase.substring(1);
  print(frase);

  nome = nome.aumentarPrimeiraLetra();
  print(nome);

}

extension AumentarPrimeiraLetra on String {
  String aumentarPrimeiraLetra() {
    return this[0].toUpperCase() + this.substring(1);
  }
}