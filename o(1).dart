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

void main() {
  findItemToExaclyPosition("nintendo");
}
