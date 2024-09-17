void main(List<String> arguments) {
  int? a;
  print(a);
  a ??= 5;
  print(a);

  //adding a certain value
  var b = a += 3;

  var c = a -= 3;

  var d = a ~/= 3;

  var e = a *= 3;
  print(b);
  print(c);
  print(d);
  print(e);
}
