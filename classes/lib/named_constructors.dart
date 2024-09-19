//multiple constructors using .

class A {
  A({
    required this.x,
    required this.y,
  });
  A.zero()
      : x = 0,
        y = 0;

  A.fromJson({required Map<String, int> json})
      : x = json['x']!,
        y = json['y']!;

  A.zeroX({required int y}) : this(x: 0, y: y);
  A.zeroY({required int x}) : this(x: x, y: 0); 


  final int x;
  final int y;

  @override
  String toString() => 'A(x: $x, y: $y)';
}

void main() {
  var gg = A(x: 1, y: 2);
  var ggZero = A.zero();
  var ggfromJson = A.fromJson(json: {'x': 5, 'y': 10});
  var ggZeroX = A.zeroX(y: 10);
  var ggZeroY = A.zeroY(x: 20);
  print('gg: $gg');
  print('ggZero: $ggZero');
  print('ggFrom Json: $ggfromJson');
  print('ggZeroX: $ggZeroX');
  print('ggZeroY: $ggZeroY');
}
