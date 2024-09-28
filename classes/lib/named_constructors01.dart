void main(List<String> args) {
  var s = A(x: 10, y: 20);
  var szero = A.zero();
  print('s $s');
  print('szero $szero');
  var sJson = A.fromJson(json: {'x': 5, 'y': 10});
  print('sJson $sJson');
  var szeroX = A.zeroX(y: 50);
  var szeroY = A.zeroY(x: 100);
  print('szeroX $szeroX');
  print('szeroY $szeroY');
}

class A {
  A({
    required this.x,
    required this.y,
  });

  //named constructor
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
