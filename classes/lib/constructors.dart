//A default constructor, a function with no body, arguments and has the same name as the class.
//A constructor is a method that is called whenever a class is instantiated.
//Constructors do not have return type.
//Static variables can't be set inside the constructor of a class
//since they exist without a class being instantiated. They are class wide accessible.
//This keyword is only used when there is ambiguity in assigning names.
//Initializer list comes after : in constructor ad used to initialise final variables before execution.
//Overriding the toString method will help us in printing all the class fields inside of it.
//Private fields can't be fixed inside the named parameters list i.e. can't be a required field. 

void main(List<String> args) {
  var alfa = A(1, 2, 3, 4, 5, 6);
  print('alfa: $alfa');
}

class A {
  A(
    this._private,
    this.a,
    this.b,
    this.c,
    this.d,
    this.e,
    //this.f,
  ); 

  int? _private;

  int? a;
  int b = 1;

  final int c;
  late int d;
  late final int e;
  late final int f = 10;

  static int g = 8;
  static late int h;
  static late int i = 9;
  static late final int j;

  static const int k = 10;

  @override
  String toString() =>
      'A(_private: $_private, a: $a, b: $b, c: $c, d: $d, e: $e, f: $f)';
}
