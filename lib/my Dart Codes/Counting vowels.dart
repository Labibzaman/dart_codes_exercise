import 'dart:io';

import 'dart:io';

void main() {
  print('Enter a String:');
  String? userString = stdin.readLineSync();
  print('Your String: $userString');

  if (userString != null) {
    List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
    int vowelCount = 0;

    for (var char in userString.toLowerCase().split('')) {
      if (vowels.contains(char)) {
        vowelCount++;
      }
    }

    print('Number of vowels: $vowelCount');
  }
}