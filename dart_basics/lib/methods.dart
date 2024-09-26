
void main(List<String> args){
  final car = Car();
  car.drive(speed: 20);
  print('Speed of the car is ${car.speed}');
  car.drive(speed: 50);
  car.stop();
}

class Car{
  int speed = 0;

  void drive({
    required int speed,
  }) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop(){
    speed = 0;
    print('Stopping..\nStopped');
  }
}