abstract class Manush {
  kivabe_hate ();
  kothay_thake();
  ki_kore();
}

class Employee extends Manush {
 @override
  kivabe_hate() {
    print('He is Moving in a cycle');
  }

  @override
  ki_kore() {
    print('He is employee at SDK');
  }

  @override
  kothay_thake() {
   print('Small House');
  }

}

class CompanyMalikerChele implements Manush, Employee,Malik{
  ///malik er chele tai sob thik ace kintu employee kron she notun
  ///ekhon she to malik o abar employee tar mane take duita class inherit korte lagbe ekta bap theke
  ///pawa malikana employee theke pawa chakri
  ///
  @override
  kivabe_hate() {
    print('He is moving in a Bike');
  }

  @override
  ki_kore() {
 print('He is general super visior');
  }

  @override
  kothay_thake() {
   print('He lives in a mension');
  }

  @override
  owner() {
  print('He is also the owner but after hes father');
  }
}

class Manager extends Manush{
  @override
  kivabe_hate() {
    print('He is Moving in a Bus');
  }

  @override
  ki_kore() {

  }

  @override
  kothay_thake() {

  }
}
class MD extends Manush{
 @override
  kivabe_hate() {
   print('He is a MD he is Moving in a mercedes');
  }

  @override
  ki_kore() {

  }

  @override
  kothay_thake() {

  }
}

class Ceo extends Manush{
  @override
  kivabe_hate() {
    print('He is Moving in a BMW Car');
  }

  @override
  ki_kore() {

  }

  @override
  kothay_thake() {

  }
}
class Malik extends Manush{
  @override
  kivabe_hate() {
    print('He is Moving in a Plane');
  }

  @override
  ki_kore() {

  }

  @override
  kothay_thake() {

  }
  owner(){
    print('He is the company owner');
  }
}


void main (){

  Manush employee = Employee();
  employee.kivabe_hate();
  employee.kothay_thake();
  employee.ki_kore();
  Manush manager = Manager();
  manager.kivabe_hate();
  Manush ceo = Ceo();
  ceo.kivabe_hate();
  Malik malikcompany = Malik();
  malikcompany.kivabe_hate();
  MD md = MD();
  md.kivabe_hate();
CompanyMalikerChele chele = CompanyMalikerChele();
chele.ki_kore();
chele.owner();











}