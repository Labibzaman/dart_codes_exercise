void main (){

  ///
  Person id = Person('CONDTRSCTOR',25,'dhaka',25,'MAle');
  ///Constractor print hocce tarpor bakiita object gula

  print(id.DOB);
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

  gramerLok.addTwoNumber();
  Person.addThreeNumber(25, 36);

}

class Person {
  String name ;///We can add data to this lates using object/instance
  int age ;
  String address ;
  String Gender ;
  int DOB ;

  int a =20;
  int b=250;

   addTwoNumber(){
    print(a+b);
  }


  static addThreeNumber(int y,int z){
    print(y+z);
  }

  // Person(String name,int age,String address,int DOB,String Gender){
  //   print('THis constactor Calling');
  //   print(name);
  //   print(age);
  //   print(address);
  //   print(DOB);
  //   print(Gender);
  // }

  Person(this.name,this.age,this.address,this.DOB,this.Gender){ /// oto jhamela nai
    /// this class er sob kichu initialize kor
    print('THis constactor Calling');
    print(name);
    print(age);
    print(address);
    print(DOB);
    print(Gender);
  }

}