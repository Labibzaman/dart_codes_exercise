import 'dart:io';

void main() {
  print('Enter your Number:');
  String? userInput = stdin.readLineSync();
  int userNumber = int.parse(userInput!);

  if (userNumber % 2 == 0) {
    int sum = 0;
    for (int i = 2; i <= userNumber; i += 2) {
      sum += i;
    }
    print('Sum of even numbers from 2 to $userNumber: $sum');
  } else {
    print('Please enter an even number.');
  }
}
