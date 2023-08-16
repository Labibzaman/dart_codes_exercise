import 'dart:io';

void main (){

  checkIfPrimeorNot();

}

checkIfPrimeorNot(){
  print('Enter your Number:');
  String? userInput = stdin.readLineSync();
  int userNumber = int.parse(userInput!);
  if(userNumber % 2 !=0){
    print('Your number is prime');
  }else{
    print('Your number is not prime');
  }

}