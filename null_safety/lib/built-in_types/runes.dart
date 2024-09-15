//collection containing all Decimal unicode, code points of a string
//Integer value uniquely identifying a given unicode character from inside a string

void main(List<String> arguments) {
  Runes runes = Runes('Hello');
  print(runes);
  //output UTF code points converted to decimal

  //for hexadecimal
  var runes1 = Runes('hello').map((e) => e.toRadixString(16).padLeft(4, '0'),)
  .toList();
  print(runes);

  String roseEmoji = '\u{1F339}';
  print(roseEmoji);
}