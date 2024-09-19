extension IntegerExtension on int{
  int get luckyInteger => 12;
  int add15() => this + 15;
}
//extension methods add functionality to existing libraries and classes
void main(){
  1.luckyInteger;
  print('1.luckyInteger: ${1.luckyInteger} ');

  20.add15();
  print('20.add15(): ${20.add15()}');
}