//A class with no constructors
//simple class with no constructor
/*class A{
  void method(){}
}*/

//using a mixin keyword
//they cannot be extended but can only be implemented using a with keyword
//using **ON** keyword , the classes to be mixin can be specified
mixin B {
  void method1() {}
  void method2() {}
  void method3() {}
}
 
class A with B {
  @override
  void method1() {
    super.method1();
  }
}

void main() {
  
}
