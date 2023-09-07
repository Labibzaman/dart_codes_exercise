import 'dart:io';

void main() {
  String? userinput = stdin.readLineSync();

  if (userinput != null) {
    List<String> numbersAsString = userinput.split(' ');
    if (numbersAsString.length == 3) {
      double num1 = double.parse(numbersAsString[0]);
     String num2 = numbersAsString [1];
      double num3 = double.parse(numbersAsString[2]);

      double result = 0;
switch(num2){
  case '+':
    result = num1+num3;
    print(result.toInt());
    break;
  case '-':

    result = num1-num3;
    if(result >0){
    print(result.toInt());
    }else{
      result = num3 -num1;
      print('-${result.toInt()}');
    }
    break;
  case '*':
    result = num1*num3;
    print(result.toInt());
    break;
  case '/':
    result = num1 / num3;
    print(result.toInt());
    break;
}

    }
  }
}