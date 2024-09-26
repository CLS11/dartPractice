//Classes are blueprint of information and logic.
//Copies of classes' logic is known as an instance.
//Constructor is a special method with the same name as class
//whose job is to create an instance of the class.

void main(List<String> arg) {
  final person1 = Person(name: 'Ariel', age: 27);
  print(person1.name);
  print(person1.age);
}

class Person {
  final String name;
  final int age;

  //constructor
  Person({required this.name, required this.age});
}
