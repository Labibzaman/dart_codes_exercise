class BaporFather {
  String car = 'BMW';
  String house = '3BHK';
  double bankbalance = 2145870;

  workfatherDo (){
    print('He is a Businessman');

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

void main (){
  Son son = Son();
  son.bankbalance;
  print(son.bankbalance);
  print(son.car);
  son.SonerNijerCar();


}