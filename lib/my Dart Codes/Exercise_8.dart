import 'dart:io';

void main() {
  Map<String, String> RockPaper = {
    "scissors": 'rock',
    'paper': 'scissors',
    "rock": 'paper',
  
  };
  print('Enter your rock paper or scissor');
  String? userInput = stdin.readLineSync();

  if (userInput?.toLowerCase() == RockPaper.values) {
    print('You are winner');
  } else {
    print('We choose Rock');
  }
}
