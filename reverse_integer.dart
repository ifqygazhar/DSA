import 'dart:io';

void reverse(int value) {
  bool isNegative = value < 0;
  if (isNegative) {
    stdout.write("-");
    value = -value;
  } else {
    value = value;
  }
  final toString = value.toString();
  for (int i = 0; i < toString.length; i++) {
    String reversed = toString[toString.length - 1 - i];
    stdout.write(reversed);
  }
}

void main() {
  reverse(12345);
  stdout.writeln();
  reverse(-67890);
  stdout.writeln();
}
