void main() {
  // Do While laços


  /* Diferença do While Vs Do While */
  String textoWhile = "Colocar um texto qualquer";
  int i = 0;
  while (i < textoWhile.length) {
    print(textoWhile[i]);
    i++;
  }

  print("------------");
  String textoDoWhile = "Colocar um texto qualquer";
  int x = 0;

  do {
    print(textoDoWhile[x]);
    x++;
  } while (x < textoDoWhile.length);
}