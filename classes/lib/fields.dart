//Instance variables <=> fields.
//All ways that are used in order to declare an instance variable in dart.
//All fields created inside a class have a default getter method.
//Any non-final fields and late final fields have a default setter method.
//Final is recommended.


class A{
  int? _private; //makes the property or variable private/limited to the class

  int? a;//null 
  int b = 1;

  final int c = 2;//constant through out

  late int d ;//can be declared later
  late final int e;//can be declared later and value will be costant through out
  late final int f = 10;

  static int g = 8;//exists without an instance of A
  static late int h;
  static late int i = 9;
  static late final int j;

  static const int k = 10;

}


void main(List<String> args){

}