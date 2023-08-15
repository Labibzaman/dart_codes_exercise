import 'dart:io';

void main(){
  print('Enter your number:');
  String? usernumber = stdin.readLineSync();
  int number = int.parse(usernumber!);
  for (var i=1; i<=number;i++){
    if(number % i ==0){
      print(i);
    }
  }

}