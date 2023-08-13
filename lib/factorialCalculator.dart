import 'dart:io';

void main (){
  print('Enter your number');
  String? userFactorial =stdin.readLineSync();
  int useableNumber = int.parse(userFactorial!);
  // int n =5;
  int factorial = CalculateFactorial(useableNumber);
  print(factorial);

}
CalculateFactorial (int n){
  int result=1;

  for (int i =1; i<=n;i++){
    result *=i;

  }
  return result;
}