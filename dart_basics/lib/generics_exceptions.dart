import 'dart:io';

void main() {
  /*List<String> names = [
    'John',
    'Jackie',
    'Jerry',
    'Sarah',
  ];
  String? input;

  print('Enter an integer:');
  input = stdin.readLineSync();
  //Waits for the user to input something in the console

  if (input != null) {
    int? index = int.tryParse(input);
    if (index != null && index >= 0 && index < names.length) {
      print(names[index]);
    } else {
      print(
        'Invalid input. Please enter a number between 0 and ${names.length - 1}.',
      );
    }
  } else {
    print('No input provided.');
  }*/

  Pub pub = Pub();

  try {
    pub.checkAge(Person('Jim', 40));
    pub.checkAge(Person('Jack', 23));
    pub.checkAge(Person('John', 12));
  } catch (e) {
    print(e);
  }

  print(pub.drinking);
}

class Person {
  Person(this.name, this.age);

  String name;
  int age;
}

class Pub {
  List<Person> drinking = [];

  void checkAge(Person p) {
    if (p.age < 18) {
      throw TooYoungException(p);
    } else {
      drinking.add(p);
    }
  }
}

class TooYoungException implements Exception {
  TooYoungException(this.p);
  Person p;

  @override
  String toString() {
    return '${p.name} is too young for the pub';
  }
}
