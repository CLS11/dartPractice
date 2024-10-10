//Only public methods are shared between libraries.
//Only "part of" directives are allowed inside "extension" files from inside a library.
//All "extension" files can access both private and public members of the library.
//Entire library will be imported even if only method/field is needed.
//A library can contain multiple libraries in it => export keyword.

//library second_library;
part of 'first_library.dart';

//import 'package:dart_basics/first_library.dart';

void anotherFunction() {
  var a = A();
  a.publicField;
  a.publicMethod();
}
