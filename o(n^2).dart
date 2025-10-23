const items1 = [2, 1, 4, 3, 5];
const items2 = [1, 2, 3, 4, 5];

/// Find item in two lists with O(n^2) complexity
void findItemWithCompare(List<int> list1, List<int> list2) {
  for (int i = 0; i < list1.length; i++) {
    for (int j = 0; j < list2.length; j++) {
      if (list1[i] == list2[j] && i == j) {
        print(
          "Item found list1: ${list1[i]} at index ${i}, item found list2: ${list2[j]} at index ${j}",
        );
        return;
      }
    }
  }
}

/// Find pairs in a list with O(n^2) complexity
void findPairs(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    for (int j = i + 1; j < list.length; j++) {
      if (list[i] == list[j]) {
        print("Pair found: ${list[i]} at indices ${i} and ${j}");
        return;
      }
    }
  }
}

void main() {
  findItemWithCompare(items1, items2);
  findPairs([1, 2, 3, 2, 4, 5, 1]);
}
