void main(List<String> arguments){
  var functionObject = first;//only the name of the function is to be assigned
  //Entire function with arguments is integer type
  second(functionObject, 5);
}

//Example 
int first(int a){
  return a;
}

//for returning a singl expression
/*int first(int a) => a.isOdd ? 1: 0;*/

//passing functions as functions arguments
void second(int Function(int) f, int a){
  print(f.call(a));
  print(f(a));
  
}
//If no return value is specified, a null is returned by default
