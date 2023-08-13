import 'dart:io';

void main (){
  print('Enter your AGE:');
  String ? userGrade = stdin.readLineSync();
  int intgrade = int.parse(userGrade!);
  if ( intgrade != null) {
    if (intgrade >=0 && intgrade <= 5) {
      print('Ticket price :free');
    } else if (intgrade >= 6 && intgrade <=12) {
      print('You are kid your price :5dollar');
    } else if (intgrade >= 13 && intgrade <=17) {
      print('your price :10 dollar');
    }
    else if (intgrade >= 18 && intgrade <64 ){
      print('your price :15dollar');
    }else if (intgrade > 65){
      print('Your ticket price 12 dollar');
    }
  }
}