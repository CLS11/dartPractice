import 'dart:math';

class Singleton {
  Singleton._privateConstructor();
  static final _instance = Singleton._privateConstructor();
  factory Singleton() => _instance;
}

class ConstantClass {
  const ConstantClass();
}

class Point {
  const Point({
    required this.x,
    required this.y,
  });

  //static methods interact with static fields inside the class
  static distanceBetween(Point p1, Point p2) {
    var dx = p1.x - p2.x;
    var dy = p1.y - p2.y;
    return sqrt(pow(dx, 2) + pow(dy, 2));
  }

  //operators
  Point operator +(Point p) => Point(x: x + p.x, y: y + p.y);
  Point operator -(Point p) => Point(x: x - p.x, y: y - p.y);

  factory Point.random({required bool isPositive}) {
    int minNegativeValue = -99;
    int maxNegativeValue = -1;
    int minPositiveValue = 0;
    int maxPositiveValue = 99;

    int randomNegativeValue = minNegativeValue +
        Random().nextInt(maxNegativeValue - minNegativeValue);
    int randomPositiveValue = minPositiveValue +
        Random().nextInt(maxPositiveValue - minNegativeValue);

    return isPositive
        ? Point(x: randomPositiveValue, y: randomPositiveValue)
        : Point(x: randomNegativeValue, y: randomNegativeValue);
  }
  factory Point.explanation() => Point.random(isPositive: true);

  final int x;
  //int get x => x
  //getting the field
  //implicit getter

  int get sum => x + y;
  int get diff => x - y;
  //getter

  final int y;
  static const Point origin = Point(x: 0, y: 0);

  @override
  String toString() => 'Point(x: $x, y: $y)';
}

void main() {
  var s1 = Singleton();
  var s2 = Singleton();

  ConstantClass c1 = const ConstantClass();
  ConstantClass c2 = const ConstantClass();

  identical(s1, s2);
  print('identical(s1,s2): ${identical(s1, s2)}');

  identical(c1, c2);
  print('identical(s1,s2): ${identical(c1, c2)}');
}
