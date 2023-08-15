///
void main (){

  Person id = Person();
  print(id.name);
  id.name = 'Labib Zaman'; /// Adding data to empty variables
  print(id.name); /// its feel like filling an empty box
  var proR = id.age;
  print(proR);
  print(id.age = 25);
  id.Gender = 'Male';
  print(id.Gender);
  print('');

Person gramerLok = Person();
gramerLok.name = 'Karim';
gramerLok.age = 38;
gramerLok.address = 'gram er bari grame ';
print(gramerLok.name);
  print(gramerLok.age);

  print(gramerLok.address);



}

class Person {
  String name = '';///We can add data to this lates using object/instance
  int age = 0;
  String address = '';
  String Gender = '';
  int DOB = 0;
}