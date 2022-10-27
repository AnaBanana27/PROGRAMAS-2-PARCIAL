import 'dart:io';
//ANA ISABEL SANCHEZ HEREDIA
//CALCULADORA QUE LEA 2 NUMEROS Y QUE LOS IMPRIMA 
//YA SEA SUMA, RESTA , DIVISION Y RESTA

void main() {
  String op = leerDatos("INDICA LA OPERACION A REALIZAR [+,-,*,/]");
  int num1 = int.parse(leerDatos("INSERTA EL PRIMER NUMERO"));
  int num2 = int.parse(leerDatos("INSERTA EL SEGUNDO NUMERO"));
  print("${calculadora(op, num1, num2)}");
}

String leerDatos(String mensaje) {
  print(mensaje);
  String data = (stdin.readLineSync()!);
  return data;
}

String calculadora(String op, int n1, int n2) {
  if (op == "+") {
    return "$n1 + $n2 = ${suma(n1, n2)}";
  } else if (op == "-") {
    return "$n1 - $n2 = ${resta(n1, n2)}";
  } else if (op == "*") {
    return "$n1 * $n2 = ${multi(n1, n2)}";
  } else if (op == "/") {
    return "$n1 / $n2 = ${divi(n1, n2)}";
  } else {
    return "Operación inválida";
  }
}

int suma(int num1, int num2) => num1 + num2;
int resta(int num1, int num2) => num1 - num2;
int multi(int num1, int num2) => num1 * num2;
int divi(int num1, int num2) => num1 ~/ num2;