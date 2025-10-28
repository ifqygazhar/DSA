int positiveSum(List<int> arr) {
  int sum = 0;
  // your code here
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > 0) {
      sum = sum + arr[i]; // sum += arr[i];
    }
  }
  return sum;
}

void main() {
  print(positiveSum([1, 2, 3, 4, 5]));
}
