void main (){

  Person id = Person('CONDTRSCTOR',25,'dhaka',25,'MAle');
  ///
  ///age constractor vitorer variables gula print hocce then class er
  ///
  print(id.name);
  id.name = 'Labib Zaman'; /// Adding data to empty variables
  print(id.name); /// its feel like filling an empty box
  var proR = id.age;
  print(proR);
  print(id.age = 25);
  id.Gender = 'Male';
  print(id.Gender);
  print('');
  print('');

  ///
  ///age constractor vitorer variables gula print hocce then class er
  ///
  Person gramerLok = Person('2nd person',36,'dhaka',25,'MAle');
  gramerLok.name = 'Karim';
  gramerLok.age = 38;
  gramerLok.address = 'gram er bari grame ';
  print(gramerLok.name);
  print(gramerLok.age);
  print(gramerLok.address);
  print('');


}

class Person {
  String name = '';///We can add data to this lates using object/instance
  int age = 0;
  String address = '';
  String Gender = '';
  int DOB = 0;

  Person(String name,int age,String address,int DOB,String Gender){
    print('THis constactor Calling');
    print(name);
    print(age);
    print(address);
    print(DOB);
    print(Gender);
  }
}