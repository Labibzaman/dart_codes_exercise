void main() {
  try {
    dynamic a = 54 / 0;
    double b = 0 / 54;
    int c = a + 56;
    print(c);
    throw MyCustomException();
  } on TypeError catch (error) {
    print('Type error: $error');
  } catch (error) {
    print('Unknown error: $error');
  } finally {
    print('Start from the beginning');
  }

  // Now throw the custom exception
  try {
    throw MyCustomException();
  } catch (error) {
    print(error);
  }
}

class MyCustomException implements Exception {
  @override
  String toString() {
    return 'There is an error, please solve it first';
  }
}
