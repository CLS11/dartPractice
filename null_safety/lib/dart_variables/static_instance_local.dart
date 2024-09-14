class A {
  //static variable
  static int s = 90;
  //non nullable static variables must be initialised
  //earlier on, can be assigned the value later by using late 
  static int nonNullableStatic = 15;
  //Nullable static variables can be assigned the value later
  static int? nullableStatic;

  //instance variables also k/a fields or properties 
  double i = 87;
  //nullable instance variable can be left without assignment 
  //They'll be assigned null later on in the program, can be assigned within a constructor
  double? nullableInstance;
  //non nullable instance variables can be assigned value later on
  //but need to be initialised before using
  //can also be initialised in the constructor
  late double nonNullableInstance;

  //local variable that can be accessed in a method only
  void randomFunction(){
    var l = 4;
  }


}
