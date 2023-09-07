import 'dart:io';

void main() {
  Library library = Library();

  while (true) {
    print('Enter 1 to search for a book');
    print('Enter 2 to borrow a book');
    print('Enter 3 to return a book');
    print('Enter 4 to exit');
    print('Enter your choice: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print('Enter the book name to search: ');
        String? bookName = stdin.readLineSync();
        library.searchBook(bookName!);
        break;

      case '2':
        print('Enter the book name to borrow: ');
        String? bookToBorrow = stdin.readLineSync();
        print('Enter your name: ');
        String? borrowerName = stdin.readLineSync();
        library.borrowBook(bookToBorrow!, borrowerName!);
        break;

      case '3':
        print('Enter the book name to return: ');
        String? bookToReturn = stdin.readLineSync();
        print('Enter your name: ');
        String? returnerName = stdin.readLineSync();
        library.returnBook(bookToReturn!, returnerName!);
        break;

      case '4':
        return;

      default:
        print('Invalid choice. Please enter a valid option.');
    }
  }
}

class Library {
  Map<String, int> books = {
    'Book1': 3,
    'Book2': 5,
    'Book3': 2,
  };

  Map<String, String> borrowers = {};

  void searchBook(String bookName) {
    if (books.containsKey(bookName)) {
      int? quantity = books[bookName];
      print('$bookName is available. Quantity: $quantity');
      if (borrowers.containsKey(bookName)) {
        print('Borrowed by: ${borrowers[bookName]}');
      }
    } else {
      print('$bookName is not available in the library.');
    }
  }

  void borrowBook(String bookName, String borrowerName) {
    if (books.containsKey(bookName) && books[bookName]! > 0) {
      books[bookName] = (books[bookName] ?? 0) - 1;
      borrowers[bookName] = borrowerName;
      print('$borrowerName borrowed $bookName.');
    } else {
      print('$bookName is not available for borrowing.');
    }
  }

  void returnBook(String bookName, String returnerName) {
    if (books.containsKey(bookName)) {
      books[bookName] = (books[bookName] ?? 0) + 1;
      print('$returnerName returned $bookName.');
    } else {
      print('$bookName is not a valid book.');
    }
  }
}
