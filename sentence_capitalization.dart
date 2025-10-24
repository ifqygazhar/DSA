String capitalization(String value) {
  /// ["Sentence1", "Sentence2"]
  final temp = value.toLowerCase().split(" ");

  for (int i = 0; i < temp.length; i++) {
    var result =
        temp[i][0].toUpperCase() +
        temp[i].substring(1); // access 1 word and replace
    temp[i] = result;
  }

  return temp.join(" ");
}

/// smart solution
String capitalizationSmart(String value) {
  return value
      .toLowerCase()
      .split(" ")
      .map((word) => word[0].toUpperCase() + word.substring(1))
      .join(" ");
}

void main() {
  print(capitalization("hEllo wOrld"));
  print(capitalizationSmart("iWak pEyek"));
}
