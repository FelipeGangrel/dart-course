// it won`t be initialized here
late int value = 100;

void main(List<String> args) {
  // but rather here, when accessed for the first time
  // this is useful for lazy initialization
  print(value.isEven);
}

class WeatherStation {
  // this will call the function to initialize its value on first access
  late int temperature = readTemperature();

  // Imagine this function is too costly
  int readTemperature() => 25;
}
