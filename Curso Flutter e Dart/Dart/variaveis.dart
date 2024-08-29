void main() {
  // variáveis
  String name = 'Danillo';

  print(name);

  double preco = 5.9;
  
  print(preco);
  print(preco * 2);
  print(preco * 5);

  preco = 4.5;

  print(preco * 20);
  print(preco * 2);

  preco = 5.445115;
  int numero = 5;
  bool status = true;
  dynamic qualquer = "blablabla"; /* aceita String, Inteiros, nuḿeros quebrados e Boolean */
  
  // print(qualquer + 5); /* erro no terminal */

  dynamic fisrtNamePerson = "Danillo"; /* Formato Camelcase */
  print(fisrtNamePerson);

  String palaVra = "outro";
  print(palaVra);

  int idade = 10;

  idade = idade + 5;
  idade += 5;

  print(idade);

  String nome = "Danillo";
  String nomeCompleto = nome + " Teles";
  print(nomeCompleto);
  print("O nome do Sr. $nome Teles possui ${nome.length} letras");
  String dados = '''Cliente: $nomeCompleto
Endereço: Rua A
Preço: R\$150,00''';  /* usando 3 aspas simples faz a quebra de linha */
  print(dados);

  dynamic valores = 10;
  print(valores.runtimeType);
  valores = 'Nome';
  print(valores.runtimeType);
  valores = true;
  print(valores.runtimeType);
  valores = 10.40;
  print(valores.runtimeType);
}