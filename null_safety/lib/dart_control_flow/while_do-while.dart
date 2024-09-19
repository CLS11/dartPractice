void main(List<String> arguments) {
  int i = 0;
  while (i != 5) {
    i++;
    print(i);
  }
  //checks the condition first

  i = 0;
  do {
    i++;
    print(i);
  } while (i != 5);
  //condition is checked after implementation of the loop

}
