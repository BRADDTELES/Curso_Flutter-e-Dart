/* Variavel Global */
// String dado1 = "Primeiro";
void main() {
  /* Parâmentros posicionais e variáveis globais */
  String dado1 = "Peguei o valor 1";
  getValor(dado1);
}

void getValor(String dado1) {
  dado1 = "Peguei o valor 2 = $dado1";
  print(dado1);
}