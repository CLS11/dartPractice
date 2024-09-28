//A mixin is a class with no constructor and can not be instantiated.
//A class whose behavior can be shared with many.
//They can contain abstract methods and they can't be extended but can be implemented.
//On keyword can be used to specify which class is to be mixed in. 

void main(List<String> args) {
  Musician musician = Musician();
  musician.test();
}

class Performer {
  void performs() => print('Performs');
}

mixin Guitarist on Performer {
  void playGuitar() => print('Playing the guitar');
  void test() => performs();//to access the perform method from super class use super keyword. 
}

mixin Drummer {
  void playDrums() => print('Playing the drum');
  void performs() => playDrums();
}

class Musician extends Performer with Drummer, Guitarist {}
