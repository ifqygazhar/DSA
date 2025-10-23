import 'dart:io';

/// Reverse a string and print each character on same line O(n)
void reverse(String value) {
  for (int i = 0; i < value.length; i++) {
    String reverse = value[value.length - 1 - i];
    stdout.write("${reverse}");
  }
  stdout.writeln();
}

void main() {
  reverse("abah");
  reverse("gemoy");
}
