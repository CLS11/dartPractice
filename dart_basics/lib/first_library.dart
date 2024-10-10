//Dart offers library fields unlike other OOPs class private fields.
//1 feature = 1 library
//A library can be formed out of 1 or more files.
library first_library;

part 'second_library.dart';

class A {
  final int _privateField = 5;
  void _privateMethod() {}

  final int publicField = 10;
  void publicMethod() {}
}

void randomFunction() {
  var a = A();
  a._privateField;
  a._privateMethod();
}
