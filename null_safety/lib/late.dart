//it won't be initialised at first
late int value = 400;

class WeatherStation {
  late int temperature = readTemperature();
  int readTemperature() => 30;
}

void main(List<String> arguments){
  //will be intialised here because of late
  print(value.isEven);
}