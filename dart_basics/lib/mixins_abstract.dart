void main(List<String> args){
final brook = Cat(age: 5);
print(brook.age);
brook.increementAge();
print(brook.age);
}

mixin HasAge{
  abstract int age;
  void increementAge() => age++;
}

class Cat with HasAge{
  @override
  int age = 0;
  Cat({required this.age});
}