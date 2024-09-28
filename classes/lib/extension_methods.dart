//Extension methods are just used to add functionality to existing libraries.

void main(List<String> args) {
  1.luckyInteger;
  print('${1.luckyInteger}');
  10.add15();
  print('${10.add15()}'); 
}

extension IntegerExtension on int {
  int get luckyInteger => 15;
  int add15() => this + 15;
}
