void main (){
  Person('Labib', 25, 'Black');
  Person obj =  Person('Zaman', 25, 'Blue');
  obj.name = 'Kimal';
  print(obj.name);


}

class Person {
  String name;
  int age;
  String Color;

  Person(this.name,this.age,this.Color){ ///We use constractor to reuse the method
    /// amra constractor er vitor sob kichu diye pore re use korar somoy sudhu  variables er
    /// value gula change kore hoye gelo
    print('My name is $name');
    print('My Age is $age');
    print('My Favourite color is $Color');

    ///ekta text button er jonno method ta banay constractor dhorlam pore just constrator
    ///ta call kore value gula change kore nile hoye gelo
  }


}