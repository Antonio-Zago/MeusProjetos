import 'dart:io'; //Importação para uso do input

main() {
  String num1t = stdin.readLineSync() ?? ""; //input
  var num1 = int.parse(num1t);
  String num2t = stdin.readLineSync() ?? "";
  var num2 = int.parse(num2t);

  print(num1 + num2);
}
