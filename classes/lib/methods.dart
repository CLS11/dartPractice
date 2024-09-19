class A {
  //constructor is a method that is called whenever a class is instantiated  into an object
  A(this._private, 
    {

    
    this.a ,
    required this.b,
   // this.c,
    required this.d,
    required this.e,
    required this.f,
});
  //constructors don't have return type
  int? _private;
  int? a;
  int b = 1;
  final int c = 2;

  late int d;
  late final int e;
  late int f = 5;

  static int g = 6;
  static late int h;
  static late int i = 8;
  static late final int j;

  static const int k = 10;

  @override
  String toString() =>
  'A(_private: $_private, a: $a, b = $b, c = $c, d = $d, e = $e, f: $f)';
}

void main() {
  var cll = A(1, a:2, b:3, d:4, e:5, f:6);
  print('cll: $cll');
}
