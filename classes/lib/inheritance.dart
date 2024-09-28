//Sharing the behavior of 2 classes.
//Super keyword refers to the superclass or the class above.
//This suggests the current class.
//A dart class can only extend 1 class.
//Co-variant keyword is used in order to return more specific type.

void main(List<String> args) {
  Duck duck = Duck('Chi');
  print('duck.name ${duck.name}');
  duck.whatAmI();
}

class Animal {
  final String name;
  Animal({required this.name});

  void whatAmI() => print('I am an animal.');
  void chase(Animal a) {}
}

class Bird extends Animal {
  Bird(String name) : super(name: 'Mi');
}

class Duck extends Bird {
  Duck(String name) : super(name);

  @override //polymorphism
  void whatAmI() => print('I am a duck.');
}

class Mouse extends Animal {
  Mouse() : super(name: 'Tom');
  @override
  void chase(covariant Mouse m){}
}

class Cat extends Animal {
  Cat() : super(name: 'Jerry');
}
