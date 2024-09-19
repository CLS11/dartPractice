void main(List<String> arguments) {
  var list = [1, 2, 3, 4, 5];

  for (var i = 0; i < list.length; i++) {
    if (list[i] == 3) {
      //i = 4;
      break;
    } else {
      print(list[i]);
    }
  }

  for(var item in list){
    if(item == 1){
      continue;//skip the 1 and print the remaining
    }
    print(item);
  }

  //alternative
  //var list = [1, 2, 3, 4, 5].where((element) => element!=1)..forEach(print);
}
