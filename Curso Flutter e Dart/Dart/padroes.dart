void main() {
  // Padrões
  var (idade, nome, isVip, preco) = getNumero();

  print("Seu nome é " + nome + " sua idade é $idade \nVocê é VIP ? ${isVip} \nValor do ingresso: $preco");
}

(int, String, bool, double) getNumero() {
  return (20, "João", false, 5.7);
}