class Person {
  String name;
  int age ;
  String address;
  Person(this.name,this.age,this.address); ///using constructor to initialize variables

  ///Creating say hello function with void to return nothing just print when we call
  void sayHello(){
    print('Hello,my name is $name');
  }

  /// creating function to return age in months
  int getAgeInMonths(){
    return 12*age;
  }
}

void main (){
 String name ='Labib'; ///Assigning name

 int age = 25;///assigning age

 String address ='Bochaganj ,Dinajpur'; ///assigning address

 Person person = Person(name, age, address);

 person.sayHello(); ///calling sayHello function

 int ageInMonths = person.getAgeInMonths();

 print('Age in Months:$ageInMonths');
}

