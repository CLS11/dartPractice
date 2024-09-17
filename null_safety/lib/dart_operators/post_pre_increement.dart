void main(List<String> arguments){
  var a = 5;
  //a++; Gives output 6

  //assignes the value and then increements it 
  // b = a then a = a+1
  var b = a++; //Gives output 5
  print(b);
  //++a;

  //increements the value at first and then assignes it
  //a = a +1= 6 then c = a
  var c = ++a;
  print(c);
}