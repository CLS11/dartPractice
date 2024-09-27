//Objects are instantiated from class.
//A default constructor is always contained in the class.
//Every class created in dart invisibly holds an object.
//Functions can be overidden in a subclass.
//super--->gives the base class from which another class is extending.

class A {
  @override
  String toString() {
    return 'This is A.';
  }
}

void main() {
  Object o;
  var a = A();

  var hashCode = a.hashCode;
  print('$hashCode');

  var runtimeType = a.runtimeType;
  print('$runtimeType');

  var str = a.toString();
  print('$str');
}
