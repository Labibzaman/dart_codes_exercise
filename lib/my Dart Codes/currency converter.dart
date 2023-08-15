import 'dart:io';

void main() {
  print('IN which currency you want to convert:');
  String? userCurrencyName = stdin.readLineSync();
  print('Your currency name is $userCurrencyName');

  print('Enter how much do you have:');
  String? userCurrency = stdin.readLineSync();
  double numUserCurrency = double.tryParse(userCurrency ?? '') ?? 0.0; // Improved parsing

  print('Your currency is $numUserCurrency');

  Map<String, double> exchangeRates = {
    'USD': 105,
    'Euro': 120,
    'AUD': 100,
    'SAUD': 90,
    'TK': 85,
    'Dinner': 350, // Fixed 'DInner' to 'Dinner'
  };

  // if (exchangeRates.containsKey(userCurrencyName)) {
  //   double conversionRate = exchangeRates[userCurrencyName]!;
  //   double convertedAmount = numUserCurrency * conversionRate;
  //   print('Converted amount to $userCurrencyName: $convertedAmount');
  // } else {
  //   print('Currency not found in exchange rates.');
  // }

  if (exchangeRates.containsKey(userCurrencyName)){
    double currencyamount = exchangeRates[userCurrencyName]!;
    double convertValue = currencyamount* numUserCurrency;
    print(convertValue);
  }else {
    print('Try to wirte currency name is caps ');
  }

}

