//Const constructors only work with final fields.
//A constant field within a class must be static.

void main() {
  /*var p1 = const Point(x: 1, y: 1);
  var p2 = const Point(x: 1, y: 1);
  identical(p1, p2);
  print('identical(p1,p2)  ${identical(p1, p2)}');*/

  const listOfPoints = [Point(x: 1, y: 2), Point(x: 2, y: 1)];
}

class Point {
  const Point({required this.x, required this.y});

  final int x;
  final int y;
  static const Point origin = Point(x: 0, y: 0);

  @override
  String toString() => 'Point(x: $x, y: $y)';
}
