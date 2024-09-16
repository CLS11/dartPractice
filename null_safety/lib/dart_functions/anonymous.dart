//Anonymous functions do not require a name, they just need parameters and code block
//Lambdas or closure

void main(List<String> arguments){
  var list = ['hello', 'abc', 'efgh'].map((String s){
    return s.toUpperCase();
  }).toList();
  print(list); 
}

//Not using anonymous function
String applyUpperCaseChanges(String s){
 return s.toUpperCase();
}