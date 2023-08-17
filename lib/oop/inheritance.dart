class BaporFather {
  String car = 'BMW';
  String house = '3BHK';
  double bankbalance = 2145870;

  workfatherDo (){
    print('He is a Businessman');


  }
  theirName(){
    print('Kapoor and sons');
  }
 fatherCar (){
    print('He has a Ferrari');
 }

}

class Son extends BaporFather {
  whatSonsDo(){
    print('He is a student');
  }
  SonerNijerCar(){
    print("he's own car is Mercedes");
  }

}

class Daughter extends BaporFather{



  @override
  theirName() {

    print('still kapoor but now she is Khan');

  }

 @override
  fatherCar(){
  super.fatherCar();
    print('she also has her own toyota');
  }

}

void main (){
  Son son = Son();
  son.bankbalance;
  print(son.bankbalance);
  print(son.car);
  son.SonerNijerCar();
  son.theirName();
  Daughter daug = Daughter();
  daug.theirName();
  daug.fatherCar();


}