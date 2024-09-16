/*int topLevel = 5;
void main(List<String> arguments) {
  topLevel = 9;
  void a() {
    topLevel = 10;
  }

  void b() {
    topLevel = 11;
  }
}*/
//scope is decided by the variables declared globally or within some other function

//lexical scope of parameters

void main(List<String> arguments){
  f(10);
  //variable a is gone after the function 
}

void f(int b){
  var a = 10;
  b = 19;
  //this will only occur here 
}

//It is a function objct that has access to functiinal scope
void main(List<String> arguments){
}

String Function(String) makeCar(String make){
  var engine = '4.0 V6';
  return (model) => $make $model $engine;
}