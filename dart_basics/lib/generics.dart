/*void main() {
  //Specify the generic type
  final i = PrintItem<int>(5, 6);
  i.printItem();

  final d = PrintItem<double>(6, 10.2);
  d.printItem();

  //generic<int, String>(10, 'Hello');
  generic(10, 12.2);
}*/

enum Status {
  stopped,
  running,
  paused,
}

void main() {
  //Instantiating the class
  final PrintItem<int> printItemInt = PrintItem(10, 50, Status.paused);
  printItemInt.prints();

  final PrintItem<String> printItemString = PrintItem(20, 'Hi', Status.running);
  printItemString.prints();

  final PrintItem<PrintItem> printItem =
      PrintItem(2, printItemInt, Status.stopped);
  printItem.prints();
}

class PrintItem<T> //Generic Type
{
  PrintItem(this.times, this.printedItem, this.status);

  int times;
  T printedItem;
  final Status status;

  void printItem() {
    for (var i = 0; i < times; i++) {
      print(printedItem);
    }
  }

  void prints() {
    if (status.index == 1) {
      for (var i = 0; i < times; i++) {
        print(printedItem);
      }
    } else {
      print('Item stopped: ${status} ${status.index}');
    }
  }
}

/*String generic<T, S>(T a, S b) {
  return '$a and $b';
}*/

T generic<T, S>(T a, S b) {
  return a;
  //return a+b; ///Will not work as both are non-descriptive types and don't implement + operator
  ///Extend num class in the generics to use any arithmatic operator.
}
