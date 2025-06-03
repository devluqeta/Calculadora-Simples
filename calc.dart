import 'dart:convert';
import 'dart:io';

var tipoExpressao;
var tipoExpressaoInt;

void main(List<String> args) {
  print("\n====================================================");
  print("Bem vindo! Fique a vontade para fazer seus cálculos!");
  print("====================================================");
  print("\nQual operação você quer usar? ");

  print(
      "\nDigite o número para usar a expressão que deseja:\n1 - Soma\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\n Digite: ");

  tipoExpressao = stdin.readLineSync(encoding: utf8);
  tipoExpressaoInt = int.parse(tipoExpressao);

  print("Digite o primeiro número: ");
  double n1 = double.parse(stdin.readLineSync() ?? "0");

  print("Digite o segundo número: ");
  double n2 = double.parse(stdin.readLineSync() ?? "0");

  double result;
  bool opValida = true;

  switch (tipoExpressaoInt) {
    case 1:
      result = n1 + n2;
      print('Resultado: $n1 + $n2 = $result');
      break;
    case 2:
      result = n1 - n2;
      print('Resultado: $n1 - $n2 = $result');
      break;
    case 3:
      result = n1 * n2;
      print('Result: $n1 * $n2 = $result');
      break;
    case 4:
      if (n2 != 0) {
        result = n1 / n2;
        print('Resultado: $n1 / $n2 = $result');
      } else {
        print('Erro: Não é permitido dividir por zero.');
        opValida = false;
      }

      if (opValida) {
        print("Operação concluída com sucesso!");
      }
  }
}
