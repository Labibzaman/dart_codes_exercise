import 'encapsulation.dart';

void main (){ ///amra ai khan theke private property access korte parbo na
  BankAccount myBank = BankAccount('858762016-524167', 'Labib Zaman');
  myBank.fshowcurrentBalance(); ///this a function to show balance
  myBank.setNewBalance=2014;

  print(myBank.showCurrentBalance); /// this is a get method to show
  /// amra jodi set method na rakhi tahole sudhu bank er owner balance edit korte
  /// parben onno kew parbena

  /// private property can be only access from this owmn file
  ///

}