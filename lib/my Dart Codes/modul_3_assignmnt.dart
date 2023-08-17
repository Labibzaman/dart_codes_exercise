void main (){

  /// For Car 1
 Car car1 = Car("Toyota", 'Sakura', 2014, 5400);
 car1.getBrand('Toyota');
 car1.getAge();
 print(car1.getAge());
 car1.getMilesDriven();
 car1.drive(50);
 print(car1.drive(50));



 ///Car 2
 Car.numberofCars();

}

class Car{
  String? brand;
  String ? model;
  int? year;
  double? milesDriven;
  Car(this.brand,this.model,this.year,this.milesDriven);

  getMilesDriven(){
    print('Miles:$milesDriven');

  }

  drive(double miles){
    double result = miles + milesDriven!;
    return result;
  }

  getBrand(String brand){
    return brand;
  }
  getModel(){
    print(model);
  }
  getYear(){
    print( year);

  }
  getAge(){
    var age = 2023 - year!;
    return age;
  }

  static numberofCars(){
    print('Car1');
  }
}