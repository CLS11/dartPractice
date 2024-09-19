void main() {
  String? name = getUserName(); // `name` can be null
  String greeting = 'Hello, ${name ?? 'Guest'}'; // Use 'Guest' if `name` is null
  print(greeting);
}

String? getUserName() {
  // This function can return a string or null
  return null;
}
