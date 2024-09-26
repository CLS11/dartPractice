void main(List<String> args) {
  const a = Person(firstName: 'Tom', lastName: 'Hill');
  print(a.firstName);
  print(a.lastName);
  print(a.fullName);
}

/*class Person {
  const Person({
    required this.firstName,
    required this.lastName,
  }) : fullName = '$firstName $lastName';

  final String firstName;
  final String lastName;
  final String fullName;
}*/

class Person {
  const Person({
    required this.firstName,
    required this.lastName,
  });

  final String firstName;
  final String lastName;
  String get fullName => '$firstName $lastName';
}
