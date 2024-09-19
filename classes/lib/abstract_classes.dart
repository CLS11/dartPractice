//EXPLICIT INTERFACE
//Every class in dart has it's implicit interface so they can be implemented
//An abstract method can be declared inside a normal class using **EXTERNAL** keyword.
abstract class UserRepositoryInterface {
  late final List<int> usersList;
  //a method without a function body is called abstract method.
  //In order to work on an interface we need to declare an abstract class.
  void create();
  List<int> read();
  void update();
  void delete();
}

//implements forces the behavior of the interfaces to derived class
//It must implement the every field inside the interface
//1 or more classes can be implemented
class UserRepository implements UserRepositoryInterface {
  @override
  late final List<int> usersList;

  @override 
  void create() {
    // TODO: implement create
  }

  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  List<int> read() {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  void update() {
    // TODO: implement update
  }
}

void main() {
  UserRepository userRepository = UserRepository();
  userRepository.create();
  userRepository.read();
  userRepository.update();
  userRepository.delete();
}
