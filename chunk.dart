import 'dart:math';

const List<int> items = [1, 2, 3, 4, 5, 6, 7, 8];

List<List<T>> chunk<T>(List<T> items, int chunkSize) {
  List<List<T>> shelter = [];
  for (int i = 0; i < items.length; i += chunkSize) {
    var minimum = min(i + chunkSize, items.length);
    var split = items.sublist(i, minimum);
    shelter.add(split);
  }

  return shelter;
}

List<List<T>> chunkDifferencesSolve<T>(List<T> items, int chunkSize) {
  List<List<T>> shelter = [];
  int index = 0;

  while (index < items.length) {
    var minimum = min(index + chunkSize, items.length);
    var split = items.sublist(index, minimum);
    shelter.add(split);
    index += chunkSize;
  }

  return shelter;
}

void main() {
  print(chunk(items, 3));
  print(chunkDifferencesSolve(items, 3));
}
