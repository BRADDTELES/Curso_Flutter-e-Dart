void main() {
  // For laços

  /* Metodo 1 */
  for (int i = 0; i < 10; i++) {
    print("Olá ${i + 1}");
  }
  
  print("------------");

  /* Metodo 2 */
  for (int i = 1; i <= 10; i++) {
    print("Olá ${i}");
  }

  print("------------");
  String texto = "Colocar um texto qualquer";
  print(texto.length);
  for (int i = 0; i <= 25; i++) {
    print("${texto.substring(0, i)}");
  }

  for (int i = 0; i < texto.length; i++){
    print(texto[i]);
  }
}