import 'dart:io';

void main (){
  print('Enter your number for multipilaction');
  String? userINput = stdin.readLineSync();
  int mutliplicatonnumber = int.parse(userINput!);
  print('Multiplicationn table for :$userINput');
  List<int> table =[
    1,2,3,4,5,6,7,8,9,10
  ];
    for (var number in table) {
      var mutply = mutliplicatonnumber * number;
      print('$number * $userINput =$mutply');
    }
  }

