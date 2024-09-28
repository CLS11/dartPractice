//Whenever a field is accessed from a class, a getter function is called.
//In dart, each field has an implicit getter.

import 'dart:math';

void main() {
  var p1 = Point(x: 2, y: 2);
  var p2 = Point(x: 1, y: 1);

  p1 + p2;

  print('p1+p2 ${p1 + p2}');
  p1 - p2;
  print('p1-p2 ${p1 - p2}');
}

class Point {
  const Point({required this.x, required this.y});

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
