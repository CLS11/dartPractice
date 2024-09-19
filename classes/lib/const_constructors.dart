class Point{
  const Point({
    required this.x,
    required this.y,
  });

  final int x;
  final int y;
  static const Point origin = Point(x: 0, y: 0);

  @override
  String toString() => 'Point(x: $x, y: $y)';
}

void main() {
  const listOfPoints = [
    Point(x: 1, y: 1),
    Point(x: 2, y: 2),
  ];
}