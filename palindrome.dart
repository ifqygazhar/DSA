/// A function that checks if a given string is a palindrome
/// Example: madam (reverse: madam) is palindrome, hello (reverse: olleh) is not palindrome O(n)

void palindromeChecker(String value) {
  for (int i = 0; i < value.length; i++) {
    String reversed = value[value.length - 1 - i];
    if (value[i] != reversed) {
      print("$value it's not palindrome");
      return;
    }
  }
  print("$value is palindrome");
}

void main() {
  palindromeChecker("madam");
  palindromeChecker("hello");
}
