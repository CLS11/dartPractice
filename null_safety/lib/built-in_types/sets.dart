//pretty similar to lists
//sets are unordered collection of unique objects

void main(List<String> arguments){
  var set = <int>{};
  set.add(1);
  set.add(3);
  set.add(2);
  set.add(3);
  print(set);
  //no access operator
  //a default set constructor can be created 
  var set1 = Set();
  print(set1);

  //can be created by explicitly mentioning
  Set<String> set2 = {'Hey', 'aaaa'};
  print(set2);

  //can be created using var
  var set3 = {1,2,3,4};
  print(set3);

  //Set
  var set4 = {8,9,10};
  //map
  var map = {1:2};
  //syntax are similar
}