//Generics help in creating classes, methods, and interfaces that operate on specified types.
//Dart is a type safe language.
//Generics are named using a single uppercase letter
//<E> = Elements
//<K, V> = Key, value
//<T> = Type
//<S> = Source
//<R> = Return type of a function or a class method

void main(List<String> args) {
  /*Tuple tuple1 = const Tuple(1, 2, 3);
  Tuple tuple2 = Tuple.fromList([4, 5, 6]);
  Tuple tuple3 = Tuple.fromList([7]);
  Tuple tuple4 = tuple1 + tuple2;

  print('tuple1 -> $tuple1');
  print('tuple2 -> $tuple2');
  print('tuple3 -> $tuple3');
  print('tuple4 -> $tuple4');*/

  const t1 = Tuple(1, 2, 3);
  const t2 = Tuple(4, 5, 6);
  final tSum = t1 + t2;
  final tDif = t1 - t2;
  print(tSum);
  print(tDif); 
}

//Making the class generic so it accepts any type of values in the tuple
class Tuple<E extends num> {
  //In order to avoid ambiguity, the fields are made private and getter methods are created for each of them.

  final E? _a;
  final E? _b;
  final E? _c;

  const Tuple(this._a, this._b, this._c);

  //Named constructor
  Tuple.fromList(List<E> list)
      : _a = list.asMap().containsKey(0) ? list[0] : null,
        _b = list.asMap().containsKey(1) ? list[1] : null,
        _c = list.asMap().containsKey(2) ? list[2] : null;

  //Overriding the operators to perform operations on them
  Tuple<num> operator +(Tuple t) {
    if (this is Tuple<num>) {
      final thisAsTupleNum = this as Tuple<num>;
      return Tuple(thisAsTupleNum._a! + t._a!, thisAsTupleNum._b! + t._b!,
          thisAsTupleNum._c! + t._c!);
    }
    return const Tuple(0, 0, 0);
  }

  Tuple<num> operator -(Tuple t) {
    if (this is Tuple<num>) {
      final thisAsTupleNum = this as Tuple<num>;
      return Tuple(thisAsTupleNum._a! - t._a!, thisAsTupleNum._b! - t._b!,
          thisAsTupleNum._c! - t._c!);
    }
    return const Tuple(0, 0, 0);
  }

  //Getter methods
  E? get first => _a;
  E? get second => _b;
  E? get third => _c;

  @override
  String toString() => 'Tuple(first: $first, second: $second, third: $third)';
}
