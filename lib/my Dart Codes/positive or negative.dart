import 'dart:io';

void main (){
  String? userInput = stdin.readLineSync();
  int numAsString = int.parse(userInput!);
  if ( numAsString > 0 ){
    print('$numAsString is a positive number.');
  } else if ( numAsString<0 ){
    print('$numAsString is a negative number.');
  }else{
    print('The number is zero.');
  }
}