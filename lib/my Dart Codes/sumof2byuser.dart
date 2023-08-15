
import 'dart:io';

void main() {
  String? userInput = stdin.readLineSync();

  if (userInput != null) {
    List<String> numbersAsString = userInput.split(' ');


      int num1 = int.parse(numbersAsString[0]);
      int num2 = int.parse(numbersAsString[1]);
      int sum = num1 + num2;

      print(sum);

  }
}

