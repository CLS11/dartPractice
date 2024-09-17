import 'package:equatable/equatable.dart';

void main(List<String> arguments) {
  int a = 2;
  int b = 2;
  print(a == b);
  //equality operator can be over readen in some cases

  //For lists, they won't be constant without a const keyword
  var list1 = const [1, 2, 3];
  var list2 = const [1, 2, 3];
  print(list1 == list2); //will give false without const

  //using identical which performs the same function as equality operator
  print(identical(a, b));

  var x = A(1, 2);
  var y = A(1, 2);

  print('x == y : ${x == y}');
  print('identical(x,y): ${identical(x,y)}');
}

class A extends Equatable{
  final int x;
  final int y;

  const A(this.x, this.y);
  
  @override
  List<Object?> get props => [x,y];
 /* @override
  bool operator ==(Object other) {
    if(identical(this, other)) return true;

    return other is A &&
    other.x == x&&
    other.y == y;
  }

  @override
  int get hashCode => x.hashCode ^ y.hashCode;*/
}
