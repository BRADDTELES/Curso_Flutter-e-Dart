void main() {
  // Palavra Chave: Continue
  String texto = "Colocar um texto qualquer";
  
  for (int i = 0; i < texto.length; i++) {
    if(i == 8 || i == 9 || i == 10) {
      continue; // Pula para a próxima iteração do loop
    }
    print("Escrevendo: ${texto[i]}");
  }
}