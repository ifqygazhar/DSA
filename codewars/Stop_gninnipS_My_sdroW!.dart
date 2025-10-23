String spinWords(String str) {
  final splitted = str.split(" ");

  for (int i = 0; i < splitted.length; i++) {
    if (splitted[i].length > 5) {
      final String reversed = splitted[i].split('').reversed.join();
      splitted[i] = reversed;
    }
  }
  return splitted.join(" ");
}

String spinWordsEfficient(String str) {
  return str
      .split(" ")
      .map((word) => word.length >= 5 ? word.split('').reversed.join() : word)
      .join(" ");
}

void main() {
  print("========== Regular solution =============");
  print(spinWords("Hey fellow warriors"));
  print(spinWords("This is a test"));
  print(spinWords("This is another test"));
  print("========== Efficient =============");
  print(spinWordsEfficient("Hey fellow warriors"));
  print(spinWordsEfficient("This is a test"));
  print(spinWordsEfficient("This is another test"));
}
