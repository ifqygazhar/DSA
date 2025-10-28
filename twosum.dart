/// solve two sum problem with o(n^2)
const List<int> items = [2, 7, 11, 15];

List<int> twoSum(List<int> items, int target) {
  List<int> answer = [];

  for (int i = 0; i < items.length; i++) {
    for (int j = 0; j < items.length; j++) {
      int sum = items[i] + items[j];

      if (sum == target) {
        answer.addAll([i, j]);
        return answer;
      }
    }
  }

  return [];
}

/// solve with o(n)
List<int> twoSum_effesient(List<int> items, int target) {
  Map<int, int> complements = {};

  for (int i = 0; i < items.length; i++) {
    int complement = target - items[i];
    if (complements.containsKey(complement)) {
      return [complements[complement]!, i];
    }
    complements[items[i]] = i;
  }

  return [];
}

void main() {
  print(twoSum(items, 9));
  print(twoSum_effesient(items, 9));
}
