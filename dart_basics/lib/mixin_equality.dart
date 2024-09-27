import'package:uuid/uuid.dart';


void main(List<String> args) {
  final uuid1 = const Uuid().v4();
}

mixin HasIdentifier {
  String get id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

class Person with HasIdentifier {
  @override
  final String id;

  final String name;
  final int age;

  Person({required this.id, required this.name, required this.age});
}
