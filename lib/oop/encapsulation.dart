class BankAccount {
  String _BankAccountNumber;
  String _AccountHolderNAme;
  double _currentBalance = 0.0;

  ///underscore use kore private kore dilam
  BankAccount(this._BankAccountNumber, this._AccountHolderNAme){
    print(_BankAccountNumber);
    print(_AccountHolderNAme);
  }

  fshowcurrentBalance() {
    print(_currentBalance);
  }

  double get showCurrentBalance => _currentBalance;


  void set setNewBalance(double newBalance) {
    // if (newBalance <= 0) {
    //   return;
    // }
    _currentBalance = newBalance;
  }

  ///aita korar karon hoile tahole
  ///sudhu showcurrent balacnce a balance dekhte parbe aita override korte parbena
}

// void main () { ///without encapsulation
//   BankAccount labib = BankAccount('89747-96875562016', 'Labib Zaman');
//   print(labib.BankAccountNumber);
//   labib.showcurrentBalance();
//   labib.currentBalance = 2015;
//   labib.showcurrentBalance();
//   labib.BankAccountNumber = 'LabibNEwaccountnumber2016';
//   //
//   print(labib.BankAccountNumber);
//   //
//   /// problem hoilo je keo chailei balance change
//   /// korte partese new account number dite partese aita onk boro problem tai amra
//   // 3ta step dekhbo
//   /// public or private kora ,
//   /// get / read kora,
//   /// set /write kora,
// }

void main() {
  BankAccount myBank = BankAccount('LAbib-524167', 'Labib Zaman');
  myBank.fshowcurrentBalance();

  myBank.showCurrentBalance ;
  myBank.setNewBalance = 5400;
  if( myBank.showCurrentBalance == 0 ){
    myBank.setNewBalance = 4015;
  }

  print(myBank.showCurrentBalance);

}
