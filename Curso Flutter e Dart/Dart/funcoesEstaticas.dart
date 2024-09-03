void main() {
  Constantes consti = Constantes();
  // print(consti.apiKey);
  
  /* ASSIM */
  var apiKey = Constantes.apiKey;
  print(apiKey);
  /* OU */
  print(Constantes.database);
  /* OU */
  print(consti.host); // host não pode ser estático na classe Constantes

  /* Chamando Método ou Função estático */
  print(Constantes.getPrecoQualquer());
  /* Chamando Método void estático */
  Constantes.digaOla();
}

class Constantes {
  static String apiKey = "senha123";
  static String database = "loja";
  String host = "localhost";

  Constantes() {
    print("criei o objeto");
  }

  static double getPrecoQualquer() {
    return 15.4;
  }

  static void digaOla() {
    print("Olá");
  }
}