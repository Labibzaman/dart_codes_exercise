import 'dart:io';

void main(){

  String? userCelcius = stdin.readLineSync();
  double Celcius = double.parse(userCelcius!);
  double result = Celcius * (9/5) +32;
  print('The temperature in Fahrenheit is: ${result.toStringAsFixed(2)}');
}