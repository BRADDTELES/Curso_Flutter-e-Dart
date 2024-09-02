void main() {
  // Parâmetros nomeados
  String canal = "WebDutra";
  // printMelhorCanal(canal: canal, inscritos: 5000);
  // printMelhorCanal(inscritos: 5000, canal: canal);
  // printMelhorCanal(inscritos: 5000, canal: canal, curtidas: 5000);
  printMelhorCanal('qualquer', inscritos: 5000, curtidas: 5000);
  // print(canal);
}

void printMelhorCanal(String canal, { double? curtidas, required int inscritos}) {
  canal = "Melhor canal $canal, inscritos: $inscritos, curtidas: $curtidas";
  print(canal);
}