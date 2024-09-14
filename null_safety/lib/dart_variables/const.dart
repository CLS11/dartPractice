void main(List<String> arguments) {
  // neither final nor const
  int a = 10;

  // a is not const, so can be reassigned
  a = 1;
  a = 2;
  a = 3;

  // The value will be constant throughout. Value is determined during compile time
  const list = [1,2,3];

  var list1 = const[1,2,3];//constant doesn't indicate that the variable is constant

  final list2 = [1,2,3];
  //It doesn't mean list is constant
  //Value of final is determined during runtime

  //Since List2 isn't const then the values can be amended
  list2.add(30);
  list2.add(40);
  list2.add(50);

  //It can't be reassigned since it has final keyword
  //list2 = [30,40,50];
}