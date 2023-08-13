import 'dart:io';

void main (){
  print('Enter your grade here in percentage:');
  String ? userGrade = stdin.readLineSync();
  int intgrade = int.parse(userGrade!);
  print('Your Number is $userGrade%');
if ( intgrade != null) {
  if (intgrade >= 80 && intgrade <= 100) {
    print('your grade is A');
  } else if (intgrade >= 70 && intgrade < 80) {
    print('your grade is B');
  } else if (intgrade >= 60 && intgrade <70) {
    print('your grade is c');
  }
  else if (intgrade >= 60 && intgrade <70 ){
  print('your grade is D');
  }else if (intgrade > 60){
  print('your grade is F');
  }else {
    print('You are below 60% You are fail');
  }
}
}