class Car{
  late int age;
  set manufacturedYear(int value) => age = 2021-value;

}

void main(){
  var car = Car();
  car.manufacturedYear = 2006;
  car.age;
  print('car.age: ${car.age}');
}