class A {
  @override
  String toString() {
    return 'This is class A.';
  }
}
//extends an object without explicitly declaring it
void main() {
  Object o;
  var a = A();

  var hashCode = a.hashCode;
  print('hashCode: $hashCode');
  var runtimeType = a.runtimeType;
  print('runtimeType: $runtimeType');
  var str = a.toString();
  print('str: $str');
}