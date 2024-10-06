//Instance methods serve a specific purpose in the class.

import 'dart:math';

void main() {}

class Point {
  const Point({required this.x, required this.y});

  num distanceTo(Point p) {
    var dx = x - p.x;
    var dy = y - p.y;
    return sqrt(pow(dx, 2) + pow(dy, 2));
  }

  final int x;
  final int y;
  static const Point origin = Point(x: 0, y: 0);

  @override
  String toString() => 'Point(x: $x, y: $y)';
}
