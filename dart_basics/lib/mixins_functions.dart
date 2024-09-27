//Mixins are themselves a datatype.
void main(List<String> args) {
  final jessicaTay = Person(firstName: 'Jessica', lastName: 'Tay');
  print(jessicaTay.fullName);
}

String getFullName(HasFullName obj) => obj.fullName;


mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final String firstName;

  @override
  final String lastName;

  Person({required this.firstName, required this.lastName});
}
