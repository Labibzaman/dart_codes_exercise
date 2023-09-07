import 'dart:io';

void main (){
  print('Enter your Number :');
  String ? userinput = stdin.readLineSync();
  int userNumber = int.parse(userinput!);
  int sum =0;
  for (int i=0 ; i <= userNumber; i++){
    if(i % 2 ==0){
      sum +=i;

    }
  }
  print(sum);
}