void main(List<String> arguments) {
  var vi = 5;
  var vs = 'Example';
  var vl = [1, 2, 3];

  //vi = 5.0; won't work
  print('Variable runtimeTypes: ');
  print(vi.runtimeType);
  print(vs.runtimeType);
  print(vl.runtimeType);

  //dynamic
  dynamic di = 5;
  dynamic ds = 'bb';
  dynamic dl = [1, 2, 3];

  
  print('Variable runtimeTypes: ');
  print(di.runtimeType);
  print(ds.runtimeType);
  print(dl.runtimeType);
  di = 5.0;
  print(di.runtimeType);


}
