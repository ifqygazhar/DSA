/// Learning how array/list data structure works in dart
/// <T> is a generic type parameter that allows the class to store elements of any type.

class MyList<T> {
  int length;
  Map<int, T> data;

  MyList() : this.length = 0, this.data = {};

  dynamic add(T value) {
    this.data[this.length] = value;
    this.length += 1;
  }

  dynamic get(T indexPosition) {
    return this.data[indexPosition];
  }

  dynamic pop() {
    if (this.length < 1) {
      return null;
    } else {
      final lastIndex = this.length - 1;
      final lastItem = this.data[lastIndex];
      this.data.remove(lastIndex);
      this.length -= 1;
      return lastItem;
    }
  }

  @override
  String toString() {
    return 'MyList(length: $length, data: $data)';
  }
}

void main() {
  var myList = MyList();
  myList.add('apple');
  myList.add('orange');
  myList.add('banana');
  print(myList);
  print("get item ${myList.get(0)}");
  print("pop item ${myList.pop()}");
  print("after pop : ${myList}");
}
