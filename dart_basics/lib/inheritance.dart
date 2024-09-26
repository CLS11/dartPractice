//Every class is implicitly a subclass of object.
//Re-implementing = overriding
void main(List<String> args){
  final v1 = Vehicle(4);
  print(v1);
  print(Car());
  print(Bicycle());

}

class Vehicle{
  final int wheelCount;

  //constructor
  const Vehicle(this.wheelCount);

  @override
  String toString() {

    /*if(runtimeType == Vehicle){
      return 'Vehicle with $wheelCount wheels';
    }
    else{
      return super.toString();
    }*/
    return '$runtimeType has $wheelCount wheels'; 
  }
}

class Car extends Vehicle{
  const Car(): super(4);
}

class Bicycle extends Vehicle{
  const Bicycle(): super(2);
}