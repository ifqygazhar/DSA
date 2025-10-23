// map / object data structure with o(1)

const Map<String, int> items = {
  "playstation": 1,
  "xbox": 2,
  "nintendo": 3,
  "pc gaming": 4,
  "vr headset": 5,
};

void findItemToExaclyPosition(String nameItem) {
  if (items.containsKey(nameItem)) {
    print("item found ${nameItem} at position ${items[nameItem]}");
  } else {
    print("Item not found: $nameItem");
  }
}

/// array/list data structure with o(1)

const List<int> itemPositions = [2, 3, 1, 6, 10];

void findItemPositionInList(List<int> list, int indexPosition) {
  final find = list[indexPosition];
  print("find position: ${find}");
}

void main() {
  findItemToExaclyPosition("nintendo");
  findItemPositionInList(itemPositions, 1);
}
