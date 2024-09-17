// ignore_for_file: curly_braces_in_flow_control_structures

/* as: Typecast(also used with libraray prefixes)
is: True if the object has the specified type
is!: True if the object doesn't have the speciified type*/

void main(List<String> arguments) {
  var list = [1, 2.0, 'test', null]..forEach((element) {
      if (element is int) {
        print('$element is of int type');
      } else if (element is double){
        print('$element is of double type');}
      else if (element is String){
        print('$element is of String type');}
      else if (element == null) {print('$element is of null type');}
    });
  /*var a = list[0] as int;
  var b = list[1] as double;
  var c = list[2] as String;
  var d = list[3] as Null;*/
}
