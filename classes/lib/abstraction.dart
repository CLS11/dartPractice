//Interface is a class that contains a least of fields, methods and errors.
//A method without a function body is known as abstract method.
//In order to declare an interface explicitly we need an abstract class.
//Implements forces the behavior of the interfaces to derived class.
//May classes can be implemented.
//External keyword can be used to access abstract methods.

void main(List<String> args) {
  UserRepositoryInterface userRepositoryInterface;
}

abstract class UserRepositoryInterface {
  late final List<int> usersList;

  void create();
  List<int> read();
  void update();
  void delete();
}

class UserRepository implements UserRepositoryInterface {
  @override
  late final List<int> usersList;

  UserRepository() {
    usersList = read();
  }

  @override
  void create() => print('Created');

  @override
  void delete() => print('deleted');

  @override
  List<int> read() => [1, 2, 3, 4, 5];

  @override
  void update() => print('updated');
}

class Animal {
  final String name;
  Animal({required this.name});

  void whatAmI() => print('I am an animal.');
  void chase(Animal a) {}

  external void doSomething();
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
  void chase(covariant Mouse m) {}
  void doSomething(){
    super.doSomething();
  }
}
