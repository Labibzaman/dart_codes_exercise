void main (){
  FunctionThatgreetswithnameandtime();
  functionwithpara('Labib', 23);
  functiowithRE(name: 'Zaman', age: 22, time: 'morning');
  fun(name: 'Labb', age: 22,time: 'li');
}


///Without parameter
FunctionThatgreetswithnameandtime(){
  print("welcome \n Good morning");
  print('');
}

///With para meter
functionwithpara(String name ,int age){
  print('Welcome $name \n Your age is $age');
  print('');
}

///With required para mater

functiowithRE({required String name, required int age, required String time}){
  print('Welcome $name \n You are now $age \n Good $time');
}

///parameter with optional
functionOptional(String name, int age , [String time ='']){

}
///Wrequired iwth optional
fun({required String name, required int age,  String time = ''}){
  print('Welcome $name \n You are now $age \n Good $time');
}