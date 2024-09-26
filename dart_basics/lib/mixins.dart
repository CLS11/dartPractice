//Separate entiites that can bring functionality to existing classes and enumerations.

void main(List<String> args){
  final person = Person();
  person.jump(speed: 20.0);
  person.walk(speed: 10.0);
}

mixin HasSpeed{
  abstract double speed;
}

mixin CanJump on HasSpeed{
  void jump({required double speed}){
    print('$runtimeType is jumping at the speed of $speed');
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed{
  void walk({required double speed}){
    print('$runtimeType is walking at the speed of $speed');
    this.speed = speed;
  }
}

class Person with HasSpeed, CanWalk, CanJump{
  @override
  double speed;
  Person() : speed = 0.0;
}