void main(List<String> arguments){
  print('Hello');

  for(var i =0; i<5; i++){
    print('Hello, in the for loop');
  }

  print('Hello');

  var list = [1,2,3,4,5]..forEach(print);
}