import 'dart:io';

void main() {
  int num = 0;

  String? userInput = stdin.readLineSync();

  int userInteger = int.parse(userInput!);

  if (userInteger % 2 == 0) {

    print('$userInteger is an Even number');
  } else {
    print('$userInteger is an Odd number');
  }

}
