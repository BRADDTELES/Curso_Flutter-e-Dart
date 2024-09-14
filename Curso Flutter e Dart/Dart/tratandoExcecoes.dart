void main() {
  // Exceção

  print(10/0);
  try {
    print(10~/0);
  } on UnsupportedError catch (e) {
    print("Error divisão por zero: ${e}");
  } catch (e) {
    print("Erro: ${e}");
  } finally {
    print("Executei o Finally");
  }

  print("Ewerton");
}