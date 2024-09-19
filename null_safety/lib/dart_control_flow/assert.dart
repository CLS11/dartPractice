void main(List<String> arguments) {
  var list = [];
  assert(list.isNotEmpty, 'List must not be empty');
  print(list);
  //used to disrupt the number flow on a running app if the boolean condition is false
  //present in the code while running in debug mode
  //In the production mode all asserts will be ignored but the conditions will be evaluated
}
