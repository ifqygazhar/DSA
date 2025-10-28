bool comp(List<int> a1, List<int> a2) {
  if (a1 == null || a2 == null) {
    return false;
  }

  if (a1.length != a2.length) {
    return false;
  }

  var square = a1.map((x) => x * x).toList();
  square.sort();
  a2.sort();

  for (int i = 0; i < square.length; i++) {
    if (square[i] != a2[i]) {
      return false;
    }
  }

  return true;
}
