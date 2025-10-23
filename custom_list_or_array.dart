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

  dynamic get(int indexPosition) {
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

  dynamic shift() {
    if (this.length < 1) {
      return null;
    } else {
      final firstItem = this.data[0];

      // reindex
      for (int i = 0; i < this.length - 1; i++) {
        final move = i + 1;
        this.data[i] = this.data[move] as T;
      }

      // remove last item
      this.data.remove(this.length - 1);
      this.length -= 1;

      return firstItem;
    }
  }

  dynamic deleteByIndex(int indexPosition) {
    if (indexPosition < 0 || indexPosition >= this.length) {
      return null;
    } else {
      final item = this.data[indexPosition];

      //reindex
      for (int i = indexPosition; i < this.length - 1; i++) {
        final move = i + 1;
        this.data[i] = this.data[move] as T;
      }

      // remove last item
      this.data.remove(this.data.length - 1);
      this.length -= 1;
      return item;
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
  print("shift item ${myList.shift()}");
  print("after shift : ${myList}");
  print("delete by index: ${myList.deleteByIndex(0)}");
  print("after delete by index : ${myList}");
}
