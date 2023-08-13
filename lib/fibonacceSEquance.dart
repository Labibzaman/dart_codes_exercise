void main() {
    int terms = 10;
    List<int> fibonacciSequence = generateFibonacci(terms);
    print("Fibonacci sequence up to $terms terms: $fibonacciSequence");
    // Should print "Fibonacci sequence up to 10 terms: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]"
  }
generateFibonacci(int terms){
  int result =1;
  for (int i=1; i<= terms; i++){

    result *=i;
  }
  return result;
}
