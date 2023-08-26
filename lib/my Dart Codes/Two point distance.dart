import 'dart:io';
import 'dart:math';

void main() {
  String? userInput = stdin.readLineSync();
  String? secondline = stdin.readLineSync();

  if (userInput != null) {
    List<String> numbersAsString = userInput.split(' ');

    double x1 = double.parse(numbersAsString[0]);
    double y1 = double.parse(numbersAsString[1]);

    double x2 = 0.0;
    double y2 = 0.0;

    if (secondline != null) {
      List<String> numbersAsString2 = secondline.split(' ');
      x2 = double.parse(numbersAsString2[0]);
      y2 = double.parse(numbersAsString2[1]);
    }

    // Calculate distance using the Euclidean distance formula
    double distance = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));

    // Print the result with exactly two decimal points
    print("Distance: ${distance.toStringAsFixed(2)}");
  }
}
