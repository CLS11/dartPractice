void main(List<String> args){
  print(Car.carsInstantiated);
  Car(name: 'Benz');
  print(Car.carsInstantiated);
  Car(name: 'xyz');

}

class Car{
  static int _carInstantiated = 0;
  static int get carsInstantiated => _carInstantiated;
  static void _increementCarsInstantiated() => _carInstantiated++;

  final String name;
  Car({required this.name,}){
    _increementCarsInstantiated();
  }
}