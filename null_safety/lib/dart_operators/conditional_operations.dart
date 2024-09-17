void main(List<String> arguments) {}

Car rewardCar(Car? dreamCar) => dreamCar != null ? dreamCar : Car('Random');

class Car {
  final String name;
  Car(this.name);
}
// condition?exp1:exp2 => exp1 ?? exp2