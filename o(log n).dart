const items = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];

/// Binary search algorithm with O(log n) complexity
void binarySearch(List<int> list, int target) {
  int left = 0;
  int right = list.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2; // integer division

    if (list[mid] == target) {
      print("item found: ${list[mid]} at index ${mid}");
      return;
    } else if (list[mid] < target) {
      left = mid + 1; // search in the right half
    } else {
      right = mid - 1; // search in the left half
    }
  }
  print("not found: ${target}");
}

void main() {
  binarySearch(items, 7);
}
