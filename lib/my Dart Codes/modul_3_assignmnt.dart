void main (){

  /// For Car 1
  //
  /// Here creating an object to access the Car class properties.
 Car car1 = Car("Toyota", 'Camry ', 2020);

 ///here the value is entered how many miles it had been drove.
 car1.drive(1000);

 /// here we are calling the function and same time printing it with the right values shown in the sample output
 //
 print('Car1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} Miles: ${car1.getMilesDriven()} Age:${car1.getAge()}');


 ///For Car 2
 //
 /// Here creating an object to access the Car class properties.
  Car car2 = Car("Honda ", 'Civic  ', 2018 );

 ///here the value is entered how many miles it had been drove.
  car2.drive(8000 );


  /// here we are calling the function and same time printing it with the right values shown in the sample output
 //
  print('Car2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} Miles: ${car2.getMilesDriven()} Age:${car2.getAge()}');



  ///For Car 3
 //
 /// Here creating an object to access the Car class properties.
 //
  Car car3 = Car("Ford", 'F-150', 2015  );

  ///here the value is entered how many miles it had been drove.
  car3.drive(15000);

 /// here we are calling the function and same time printing it with the right values shown in the sample output
 //
  print('Car3: ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} Miles: ${car3.getMilesDriven()} Age:${car3.getAge()}');

 /// Using static to track the Number of cars
 Car.numberofCars(3);

}

class Car{
  /// creating car class with the given properties.
  String brand;
  String  model;
  int year;
  double milesDriven = 0.0;

  ///Using this keyword to initialize this class variables in the constructor

  Car(this.brand,this.model,this.year);

  ///void returns nothing just calculate

  void drive(double miles){
    milesDriven += miles ; ///now if someone has drive 1000 miles he will enter it here
    /// and the value will be assign to milesDrive function

  }
  ///now returning milesDriven value from drive function.
  double getMilesDriven(){
    return milesDriven;

  }

  /// creating a Brand name function to which brand it is.
  String getBrand(){
    return brand;
  }
  /// creating a Model name  function to which Model it is.
  String getModel(){
    return model;
  }
  /// creating a getYear function to calculate the age of the car and see from which year it is.
  int getYear(){
    return year;

  }
  /// getAge will calculate the cars age from the  model of the car year and  will be minus from current year to calculate age
  int getAge(){
    return DateTime.now().year - year;
  }

  ///this is a static function now which can be access without any object . we are using static keyword for that.
  static numberofCars(int x){
    print('Total number of cars created: $x');
  }
}