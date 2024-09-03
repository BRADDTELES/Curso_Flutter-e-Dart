void main() {
  Constantes consti = Constantes();
  // print(consti.apiKey);
  
  var apiKey = Constantes.apiKey;
  print(apiKey);
  print(Constantes.database);
  print(consti.host); // host não pode ser estático na classe Constantes

  print(Constantes.getPrecoQualquer());
  Constantes.digaOla(consti);
  print(consti.nome); // O nome não pode ser alterado fora da classe
}

class Constantes {
  /* ATENÇÃO: Métodos estáticos somente acessão Propriedades estáticas */
  String nome = "";
  static String apiKey = "senha123";
  static String database = "loja";
  String host = "localhost";

  Constantes() {
    print("criei o objeto");
  }

  static double getPrecoQualquer() {
    return 15.4;
  }

  /* Correção: adicione um parâmetro para que uma instância da classe possa ser passada */
  static void digaOla(Constantes n) {
    print("Olá");
    print(database);
    // nome = "João"; // ERRO não faça isso
    n.nome = "João";
  }
}