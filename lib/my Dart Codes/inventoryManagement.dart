import 'dart:io';

void main() {





  Store store = Store();
  store.addProduct('Mobile', 5);
  store.addProduct('Widget A', 50);
  store.addProduct('Widget B', 30);
  store.sellProduct('Mobile', 2);
  store.restockProduct('Car', 10);
  store.sellProduct('Car', 5);
  store.sellProduct('Car', 6);


}

class Store {
  Map<String, int> inventory = {};

  void addProduct(String productName, int quantity ) {
    (inventory[productName] = inventory[productName] ?? 0) + quantity;
  }

  void sellProduct(String productName, int soldquantity) {
    if (inventory.containsKey(productName) && inventory[productName]! >= soldquantity) {
   inventory[productName] = (inventory[productName] ??0 ) -soldquantity;
      print('Successfully sold');
    } else {
      print('Insufficient quantity of $productName to sell $soldquantity');
    }
  }


 void restockProduct(String productName, int restockedQuantity){
  inventory[productName] =(inventory[productName] ?? 0) +restockedQuantity;
  }



}

