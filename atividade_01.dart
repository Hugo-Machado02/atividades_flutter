import 'dart:io';

void main() {
  int valor = 0;
  Map<String, int> tabelaValores = Map();
  List<String> valor1 = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"];
  List<String> valor2 = ["d", "g"];
  List<String> valor3 = ["b", "c", "m", "p"];
  List<String> valor4 = ["f", "h", "v", "w", "y"];
  List<String> valor5 = ["k"];
  List<String> valor8 = ["j", "x"];
  List<String> valor10 = ["q", "z"];

  void atribuiValor(List<String> lista, int valor) {
    lista.forEach((item) {
      tabelaValores[item] = valor;
    });
  }

  atribuiValor(valor1, 1);
  atribuiValor(valor2, 2);
  atribuiValor(valor3, 3);
  atribuiValor(valor4, 4);
  atribuiValor(valor5, 5);
  atribuiValor(valor8, 8);
  atribuiValor(valor10, 10);

  print("Digite uma palavra: ");
  var palavraDigitada = stdin.readLineSync().toString();
  String palavra = palavraDigitada.replaceAll(" ", "").toLowerCase();
  List<String> letras = palavra.split("");

  for (String letra in letras) {
    if (tabelaValores[letra] != null) {
      valor += tabelaValores[letra]!;
    }
  }

  print("Palavra Digitada: ${palavraDigitada}");
  print("Valor: ${valor}");
}
