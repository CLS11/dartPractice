void main(List<String> args) {
  const a = Person('Jack', 30);
  print(a.name);
  print(a.age);

  const b = Person.b();
  print(b.name);
  print(b.age);

  const c = Person.c(30);
  print(c.name);
  print(c.age);
  
  const Nick = Person.d();
  print(Nick.name);
  print(Nick.age); 
}

class Person {
  final String name;
  final int age;

  //constructor
  const Person(this.name, this.age);
  //named constructor
  const Person.b():name = 'Eric', age = 15;
  
  const Person.c(this.age): name = 'Kale';

  const Person.d({
    String? name,
    int? age,
  }): name = name ?? 'Nick',
      age = age ?? 29;
}
