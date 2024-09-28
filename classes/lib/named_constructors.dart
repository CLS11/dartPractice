//A dot operator can be used to set a named constructor.
//Specialized named constructor can be found when you need to pass the data from json files.

void main(List<String> args) {
  var s = A(x: 10, y: 20);
  var szero = A.zero();
  print('s $s');
  print('szero $szero');
  var sJson = A.fromJson(json: {'x': 5, 'y': 10});
  print('sJson $sJson');
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

  final int x;
  final int y;

  @override
  String toString() => 'A(x: $x, y: $y)';
}
