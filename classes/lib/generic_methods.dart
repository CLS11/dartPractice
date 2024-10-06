class Utils {
  static T? getItem<T>(List<T> list, int index) =>
      list.asMap().containsKey(index) ? list[index] : null;
}

void main(List<String> args) {
  var list = [1, 2, 3, 4];
  print(Utils.getItem(list, 12));
}
