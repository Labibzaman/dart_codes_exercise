void main() {
  try {
    // Code that might throw an exception
    dynamic a = 54 / 0;
    double b = 0 / 54;
    int c = a + 56;
    print(c);

    if (a > 10) {
      throw MyCustomException(); // Manually throw a custom exception
    }
  } catch (e) {
    // Handle the exception
    print('Caught an exception: $e');
  }
}

class MyCustomException implements Exception {
  @override
  String toString() {
    return 'This is a custom exception message';
  }
}
