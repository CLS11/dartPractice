//A factory constructor helps in returning instances from the constructors.

import 'dart:math';

void main() {
  var randomNegative = Point.random(isPositive: false);
  print('randomNegative  ${randomNegative}');
  var randomPositive = Point.random(isPositive: true);
  print('randomPositive ${randomPositive}');
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
