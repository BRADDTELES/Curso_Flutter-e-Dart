void main() {
  // Switch

  int dia = 5;
  int age = 21;

  switch (dia) {
    case 1:
      print("Segunda");
      break;
    case 2:
      print("Terça");
      break;
    case 3:
      print("Quarta");
      break;
    case 4:
      print("Quinta");
      break;
    case 5 when age >= 21:
      print("Sexta");
      break;
    case 6:
      print("Sábado");
      break;
    case 7:
      print("Domingo");
      break;
    default:
      print("não sei que dia é esse");
      break;
  }
}