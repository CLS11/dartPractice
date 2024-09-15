//Map is an object which associates keys and variables
//Have 2 types, 1 for key and 1 for variable
//key value collection 
void main(List<String> arguments){
  var map1 = {};
  var map2 = {1:1, 2:2, 3:3}; 
  //default empty map constructor
  var map3 = Map();

  map3['abcd'] = 'efg';
  map3['value'] = '2';

  print(map3);

  //calling a key which doesn't exist in the map will return null
  print(map3[2].isOdd);

  //New enteries can be added
  var map4 = {};
  map4.addEntries([MapEntry(1, 2)]);   
}