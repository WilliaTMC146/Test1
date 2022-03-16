import 'package:dart_test1/dart_test1.dart' as dart_test1;
import 'dart:io';

void Factor(int n) {
  for (int i = n; i >= 0; i--) {
    if (n % i == 0) {
      stdout.write("${i} ");
    }
  }
}

void main(List<String> arguments) {
  int n = 6;
  print("Factor dari ${n}");
  Factor(n);
}
