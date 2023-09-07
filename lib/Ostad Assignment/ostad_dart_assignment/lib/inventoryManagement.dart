void main() {
  Store store = Store();
  store.addProduct('Mobile', 5);
}

class Store {
  Map<String, int> inventory = {};

  addProduct(String productName, int quantity) {
    if (inventory.containsKey(productName) && inventory[productName]! > 0) {
      inventory.update(productName, (value) => quantity);
    }
    print(inventory);
  }
}
