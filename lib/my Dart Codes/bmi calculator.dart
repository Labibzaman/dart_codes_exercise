import 'dart:io';

void main(){
  print('Enter weight in kilograms:');
  String? userinputWeight = stdin.readLineSync();
  int userWeight = int.parse(userinputWeight!);
  print('Enter height in meters:');
  String? userinputheight = stdin.readLineSync();
  double userHeight = double.parse(userinputheight!);

  double bmiResult = userWeight/(userHeight*userHeight);
  print('Your Bmi is:${bmiResult.round()}');

  if( bmiResult < 18.5){
    print('UnderWeight');
  }else if(18.5 < bmiResult && bmiResult <24.9){
    print('Normal Weight');
  }else if (25<bmiResult && bmiResult <29.9){
    print('OverWeight');
  }else if (30 < bmiResult){
    print('Obesity');
  }else{
    print('Enter your numbers again');
  }
}