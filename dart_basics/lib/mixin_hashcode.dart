void main(List<String> args) {
  final cats = <Cat> {
    Cat(name: 'Kitty1', age: 6),
    Cat(name: 'Kitty2', age: 8),
    Cat(name: 'Kitty1', age: 6), //can not co-exist in the same set.
  };
  cats.forEach(print);
}

//creating a mixin which brings Hash code to whoever implements it.
//Hash code: Integer value which represents an object.

enum PetType { cat, dog }

mixin Pet {
  String get name;
  int get age;
  PetType get type;

  @override
  String toString() => 'Pet ($type), name = $name, age = $age';

  @override
  int get hashCode => Object.hash(name, age, type);

  @override
  bool operator ==(Object other) => other.hashCode == hashCode;
}

class Cat with Pet {
  @override
  final int age;

  @override
  final String name;

  @override
  final PetType type;

  Cat({required this.age, required this.name}): type = PetType.cat;
}
