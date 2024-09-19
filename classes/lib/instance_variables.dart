//Instance variables are referred to as fields
//Declaring the fields in all the possible ways
//Any fields created inside a class will have an automatically
//generated getter method for them.
//Any non-final fields and late final fields will have a default setter method.
//Noraml file fields can not be set outside the class, only insid constructors


class A {
  int?
      _private; //denotes that variable is private and can only be accessed by the exporting the file from lib in ehich it was declared
  int? a;
  int b = 1;
  final int c = 2;

  late int d;
  late final int e;
  late final int f = 5;

  static int g = 6;
  static late int h;
  static late int i = 8;
  static late final int j;

  static const int k = 10;
}

void main() {
  var cll = A();
  //all the fields can be accessed
  print('cll._private: ${cll._private}');
  print('cll.a: ${cll.a}');
  print('cll.b: ${cll.b}');
  print('cll.c: ${cll.c}');
  cll.d = 5;  
  print('cll.d: ${cll.d}');
  print('cll.e: ${cll.e}');
  print('cll.f: ${cll.f}');
  print('cll.g: ${A.g}');
  print('cll.h: ${A.h}');
  print('cll.i: ${A.i}');
  print('cll.j: ${A.j}');
  print('cll.k: ${A.k}');
}
