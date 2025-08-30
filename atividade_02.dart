import 'dart:io';

void main(List<String> args) {
  Map<String, String> tabelaResistores = Map();
  tabelaResistores["preto"] = "0";
  tabelaResistores["marrom"] = "1";
  tabelaResistores["vermelho"] = "2";
  tabelaResistores["laranja"] = "3";
  tabelaResistores["amarelo"] = "4";
  tabelaResistores["verde"] = "5";
  tabelaResistores["azul"] = "6";
  tabelaResistores["violeta"] = "7";
  tabelaResistores["cinza"] = "8";
  tabelaResistores["branco"] = "9";

  print("Digite os Resistores: ");
  String resistoresDigitados = stdin.readLineSync().toString().toLowerCase();
  List<String> resistores = resistoresDigitados.split("-");

  String valor = "";

  for (int i = 0; i <= 1; i++) {
    valor += tabelaResistores[resistores[i]] ?? "";
  }

  print("Valor: ${valor}");
}
