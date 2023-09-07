void main() {
  Library library = Library();

  library.addBook('Book 1', 5);
  library.addBook('Book 2', 3);
  library.addBook('Book 3', 2);

  library.borrowBook('Book 1', 'Alice');
  library.borrowBook('Book 2', 'Bob');
  library.borrowBook('Book 1', 'Charlie');

  library.returnBook('Book 1', 'Alice');
  library.returnBook('Book 2', 'Bob');
  library.returnBook('Book 3', 'Dave');

  library.displayBooks();
}

class Library {
  Map<String, int> books = {};
  Map<String, List<String>> borrowers = {};

  void addBook(String bookName, int quantity) {
    books[bookName] = quantity;
  }

  void borrowBook(String bookName, String borrowerName) {
    if (books.containsKey(bookName) && books[bookName]! > 0) {
      books.update(bookName,
          (value) => value - 1); // Decrement the quantity of the borrowed book

      if (borrowers.containsKey(bookName)) {
        borrowers[bookName]!
            .add(borrowerName); // Add the borrower's name to the list
      } else {
        borrowers[bookName] = [
          borrowerName
        ]; // Create a new list with the borrower's name
      }
      print('$borrowerName borrowed $bookName');
    } else {
      print('$bookName is not available for borrowing');
    }
  }

  void returnBook(String bookName, String borrowerName) {
    if (books.containsKey(bookName)) {
      books.update(bookName,
          (value) => value + 1); // Increment the quantity of the returned book

      if (borrowers.containsKey(bookName) &&
          borrowers[bookName]!.contains(borrowerName)) {
        borrowers[bookName]!
            .remove(borrowerName); // Remove the returning borrower's name
      }
      print('$borrowerName returned $bookName');
    } else {
      print('$bookName is not a valid book');
    }
  }

  void displayBooks() {
    print('Library Catalog:');
    for (var entry in books.entries) {
      var bookName = entry.key;
      var quantity = entry.value;
      var borrowerNames = borrowers[bookName] ?? [];
      print(
          '$bookName - Quantity: $quantity - Borrowers: ${borrowerNames.join(', ')}');
    }
  }
}
