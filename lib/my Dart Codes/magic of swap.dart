import 'dart:io';

void main () {
  String? userInput = stdin.readLineSync();

  if (userInput != null) {
    List<String> numbersAsString = userInput.split(' ');
    int num1 = int.parse(numbersAsString[0]);
    int num2 = int.parse(numbersAsString[1]);
    print('Before swapping: num1 = $num1, num2 = $num2');
    print('After swapping: num1 = $num2, num2 = $num1 ');
  }
}