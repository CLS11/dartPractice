void main(List<String> arguments){
  /*Object abc;
  String a;
  int i;
  double l;
  List<int> list;
  Null n;*/

  //Everything is a class in dart

  //Using dynamic  
  var a = 10;
  dynamic b = 6; //initialises the variable automatically to integer
  print(b.runtimeType);

  //Null variables
  String? nullableString; //null
  String nonNullableString;
  nonNullableString = nullableString!; 
  //! that variable can't be null

  //Types of variables in dart
  //Top-level, static, instance, local
}