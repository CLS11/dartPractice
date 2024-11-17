void main() {
  Animal a = Animal('dog');
  print(a is Dog);

  Animal b = Animal('cat');
  print(b is Cat);

  Animal c = Animal('rabbit');
  print(c is Animal);
}

class Animal {
  String type;

  factory Animal(String type) {
    if (type == 'cat') {
      return Cat(type);
    } else if (type == 'dog') {
      return Dog(type);
    } else {
      return Animal._type(type);
    }
  }
  //Used when we dont want to create a new instance of the class.
  Animal._type(this.type); //Private named constructor
}

class Cat extends Animal {
  Cat(String type) : super._type(type);

  @override
  String toString() {
    return type;
  }
}

class Dog extends Animal {
  Dog(String type) : super._type(type);

  @override
  String toString() {
    return type;
  }
}
