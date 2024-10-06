//Generic types can be used inside methods or classes.
//Genrics make everything more abstract, more universal, more widely-compatible.


class Stack<T> {
  final List<T> _stack = [];

  T get peak => _stack.last;
  int get length => _stack.length;

  bool get canPop => _stack.isNotEmpty;
  //Pop method
  T pop() {
    final T last = _stack.last;
    _stack.removeLast();
    return last;
  }

  void push(T value) => _stack.add(value);
}

void main(List<String> arguments) {
  var stackInt = Stack<int>();
  var stackString = Stack<String>();

  stackInt.push(1);
  stackInt.push(2);
  print(stackInt.peak);
}
