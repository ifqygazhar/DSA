const List<String> names = ["mulyono", "bahlil", "acumalaka", "jokowi"];

void findName(String name) {
  for (int i = 0; i < names.length; i++) {
    if (names[i] == name) {
      print("Name found: $name at index $i");
      return;
    }
  }
}

void main() {
  findName("bahlil");
}
