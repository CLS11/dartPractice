//Ordered group of objects
//collection of elements that can be iterative/traveresed
void main(List<String> arguments) {
  List<int> list = [1, 2, 3];
  print(list[0]);
  print(list[list.length - 1]);
  //list.forEach(print);

  List<bool> booleans = [true, false];

  List<dynamic> listOfIntegersAndDoubles = [2, 3.0, 5];
  //dynamic is used to have all kinds of numbers in the list.
  //num can also be used instead.

  //Object
  List<Object> complexList = [2, 3.0, 5, 'hey', true];
  //Add Object? to add null in the list

  List<int> a = List.filled(3, 3);
  List<int> b = List.empty();
  List<int> c = List.generate(5, (index) => index);
  //printing them
  print(a);
  print(b);
  print(c);

  List<int> d = [...a];
  //. Access any class fields or methods in the dart
  //?. NUll aware dart operator; accessing when not null
  //!. Maybe null
  //!..&?.. cascade operator
  //calls multiple fields one after another
  List<int> list1 = [1, 0, 2];
  list1.sort();
  list1 = list1.reversed.toList();
  list1.addAll([1, 3, 5, 7]);
  list1.sort();
  list1 = list1.map((e) => e + 1).toList();
  print(list1);
  //OUTPUT [1, 2, 2, 3, 4, 6, 8]

  //CASCADE ALTERNATIVE
  List<int> list2 = [1, 0, 2]
    ..sort()
    ..reversed
    ..addAll([1, 3, 5, 7])
    ..sort()
    ..map((e) => e + 1);
  print(list2);
  //OUTPUT [0, 1, 1,2, 3, 5, 7]
  //To get the same output we will call the map method on parenthesis
  List<int> list3 = (([1, 0, 2]..sort()).reversed.toList()
        ..addAll([1, 3, 5, 7])
        ..sort())
      .map((e) => e + 1)
      .toList();
  print(list3);

// ... & ...? SPREAD OPERATOR

  var x = [1, 2, 3];
  var y = [4, 5, 6];
  var z = [...x, ...y]; //inserting the value of all the lists above
  print(z);

  
  
}

//if and for
/*void main(List<String> arguments){
  bool salesActive = true;
  var salesMenu = [
  'Offers1',
  'Offers2',
  ];

  List<String> menu = [
    'Home',
    'Store',
    'About',
    'Settings',
    if(salesActive) 
    for (var item in salesMenu) item,
  ];
  print(menu);

  for more than one term in the menu

}*/
