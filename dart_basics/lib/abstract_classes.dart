void main(List<String> args){
 const car = Car();
 print(car.kind);
 car.accelerate();
 car.deaccelerate();
 const motorcycle = Motorcycle();
 print(motorcycle.kind);
 motorcycle.accelerate();
 car.deaccelerate();

}

abstract class Vehicle{
  final VehicleKind kind;
  const Vehicle({required this.kind});

  void accelerate() => print('$kind is accelerating');
  void deaccelerate() => print('$kind is deaccelerating');
}

class Car extends Vehicle{
  const Car(): super(kind: VehicleKind.car);
}
class Motorcycle implements Vehicle{
  const Motorcycle();
  @override
  void accelerate() => print('Motorcycle is accelerating');

  @override
  void deaccelerate() => print('Motorcycle is deaccelerating');

  @override
  VehicleKind get kind => VehicleKind.motorcycle;
}

enum VehicleKind{
car,
truck,
motorcycle,
bicycle,
}
