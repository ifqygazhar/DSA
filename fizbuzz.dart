List<int> items = [3, 5, 7, 9, 10, 13, 15, 17, 20, 21];

String fizzBuzzChecker(int number) {
  String result = '';
  if (number % 3 == 0 && number % 5 == 0) {
    result += "${number} is FizzBuzz\n";
  } else if (number % 5 == 0) {
    result += "${number} is Buzz\n";
  } else if (number % 3 == 0) {
    result += "${number} is Fizz\n";
  } else if (number % 3 != 0 && number % 5 != 0) {
    result += "${number} not included \n";
  }
  return result;
}

String fizzBuzz(List<int> list) {
  String result = '';
  for (int i = 0; i < list.length; i++) {
    result += fizzBuzzChecker(list[i]);
  }

  return result;
}

void main() {
  print(fizzBuzz(items));
  print(fizzBuzzChecker(3));
}
