import 'dart:io';

void main (){
  print('Enter Your Name:');
  String? userName= stdin.readLineSync();
  print("Hi $userName What's your age:");
  String? useAge= stdin.readLineSync();
  int UserNUMBERAGE = int.parse(useAge!);
  print('Your Left age is ${100 - UserNUMBERAGE}');

}