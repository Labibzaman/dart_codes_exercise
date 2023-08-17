void main (){

  /// For Car 1
 Car car1 = Car("Toyota", 'Camry ', 2020);
 car1.drive(1000);

 print('Car1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} Miles: ${car1.getMilesDriven()} Age:${car1.getAge()}');


 ///Car 2
  Car car2 = Car("Honda ", 'Civic  ', 2018 );
  car2.drive(8000 );

  print('Car2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} Miles: ${car2.getMilesDriven()} Age:${car2.getAge()}');

  ///Car 3
  Car car3 = Car("Ford", 'F-150', 2015  );
  car3.drive(15000);

  print('Car3: ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} Miles: ${car3.getMilesDriven()} Age:${car3.getAge()}');

Car.numberofCars(3);

}

class Car{
  String brand;
  String  model;
  int year;
  double milesDriven = 0.0;

  Car(this.brand,this.model,this.year); ///Using Constractor to initialize variables

  void drive(double miles){
    milesDriven += miles ; ///void returns nothing just calculate

  }

  double getMilesDriven(){
    return milesDriven; ///now returning Drive value

  }

  String getBrand(){
    return brand; /// Brand name is stored here
  }
  String getModel(){
    return model;
  }
  int getYear(){
    return year;

  }
  int getAge(){ /// this means car's model year will be minus from current year to calculate age
    return DateTime.now().year - year;
  }

  static numberofCars(int x){
    print('Total number of cars created: $x');
  }
}