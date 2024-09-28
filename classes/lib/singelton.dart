//Singelton helps in insuring that a class has only 1 instance.

import 'dart:math';

void main() {
  /*var randomNegative = Point.random(isPositive: false);
  print('randomNegative  ${randomNegative}');
  var randomPositive = Point.random(isPositive: true);
  print('randomPositive ${randomPositive}');*/

  Singelton s1 = Singelton();
  Singelton s2 = Singelton();
  identical(s1,s2);
  print('identical(s1, s2) ${identical(s1, s2)}');
}

class Singelton {
  Singelton._privateConstructor();
  static final _instance = Singelton._privateConstructor();
  factory Singelton()  => _instance;
}

class Point {
  const Point({required this.x, required this.y});

  factory Point.random({required bool isPositive}) {
    int minNegativeValue = -99;
    int maxNegativeValue = -1;
    int minPositiveValue = 0;
    int maxPositiveValue = 99;

    int randomNegativeValue = minNegativeValue +
        Random().nextInt(maxNegativeValue - minNegativeValue);

    int randomPositiveValue = minPositiveValue +
        Random().nextInt(maxPositiveValue - minPositiveValue);

    return isPositive
        ? Point(x: randomPositiveValue, y: randomPositiveValue)
        : Point(x: randomNegativeValue, y: randomNegativeValue);
  }

  factory Point.explanation() => Point.random(isPositive: true);

  final int x;
  final int y;
  static const Point origin = Point(x: 0, y: 0);

  @override
  String toString() => 'Point(x: $x, y: $y)';
}
