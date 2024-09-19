//sharing the behavior between 2 classes
//A DART CLASS CAN ONLY EXTEND 1 CLASS. 
class Animal{
  final String name;
  Animal({required this.name});

  void whatAmI() => print('Im an animal.');
  void chase(Animal a){}
}

class Mouse extends Animal{
  Mouse() : super(name: 'Jerry');
}

class Cat extends Animal{
  Cat() : super(name: 'Tom');
  @override
  void chase(covariant Mouse m) {} //informing the dart it's safe to shift to Mouse 
  //using co-variant keyword to change the type from super class to sub class  
}
class Bird extends Animal{
  Bird(String name) : super(name: name);
}

class Duck extends Bird{
  Duck(String name) : super(name);

  @override
  void whatAmI() => print('Im a duck');
  //Polimorphism
}

   void main() {  
  Duck duck = Duck('Donald');
  print('duck.name: ${duck.name}');
  duck.whatAmI();
}