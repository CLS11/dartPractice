//Like static fields, static methods can be implemented without instantiation of any object from that class.
//Static methods can interact with a static fields inside the class and they won't have access to this keyword.

import 'dart:math';

void main() {
  var p1 = Point(x: 2, y: 2);
  var p2 = Point(x: 1, y: 1);

  Point.distanceBetween(p1, p2);
  print('Point.distanceBetween(p1,p2) ${Point.distanceBetween(p1, p2)}');
}

class Point {
  const Point({required this.x, required this.y});

  static distanceBetween(Point p1, Point p2) {
    var dx = p1.x - p2.x;
    var dy = p1.y - p2.y;
    return sqrt(pow(dx, 2) + pow(dy, 2));
  }

  Point operator +(Point p) => Point(x: x + p.x, y: y + p.y);
  Point operator -(Point p) => Point(x: x - p.x, y: y - p.y);

  num distanceTo(Point p) {
    var dx = x - p.x;
    var dy = y - p.y;
    return sqrt(pow(dx, 2) + pow(dy, 2));
  }

  final int x;
  //int get x => x;

  int get sum => x + y;
  int get diff => x - y;

  final int y;
  //int get y => y;
  static const Point origin = Point(x: 0, y: 0);

  @override
  String toString() => 'Point(x: $x, y: $y)';
}
