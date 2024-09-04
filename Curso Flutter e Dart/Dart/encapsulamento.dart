class Carro {
  /* Encapsulamento */

  int _ano = 2010;

  /* Setters */
  void setAno(int ano) {
    _ano = ano;
  }

  /* Getters */
  int getAno() {
    return _ano;
  }
}

void main() {
  Carro carro = Carro();
  int c = carro.getAno();
  print(c);
  /* OU posso simplesmente fazer isso */
  print("Printando o ano: ${carro.getAno()}"); 
  
  /* Setando um novo valor */
  carro.setAno(2022);
  print("Printando o novo ano: ${carro.getAno()}");
}