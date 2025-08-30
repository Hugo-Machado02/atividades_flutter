import 'dart:io';

void main(List<String> args) {
  print("Digite o número");
  String numeroDigitado = stdin.readLineSync().toString();
  numeroDigitado = numeroDigitado.replaceAll(RegExp(r'[^0-9]'), '');
  if (!(numeroDigitado.length <= 1)) {
    List<String> numeroString = numeroDigitado.split("");
    List<int> numeros = numeroString.map((item) => int.parse(item)).toList();

    for (int i = numeros.length - 2; i >= 0; i = i -= 2) {
      numeros[i] *= 2;
      if (numeros[i] > 9) {
        numeros[i] -= 9;
      }
    }

    int soma = 0;
    for (int num in numeros) {
      soma += num;
    }

    if (soma % 10 == 0) {
      print("${numeroDigitado}: Numero Valido");
    } else {
      print("${numeroDigitado}: Numero invalido");
    }
  } else {
    print("numeros digitados invalidos!");
  }
}
