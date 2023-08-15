Set<int> findUniqueElements(Set<int> numbers) {
  Set<int> uniqueNumbers = Set(); // Create an empty set to store unique numbers

  for (int number in numbers) {
    uniqueNumbers.add(number); // Add each number to the set
  }

  return uniqueNumbers; // Return the set of unique numbers
}

void main() {
  Set<int> numbers = {2, 3, 4, 3, 5, 6, 2};

  Set<int> uniqueNumbers = findUniqueElements(numbers);
  print(uniqueNumbers); // Should print {2, 3, 4, 5, 6}
}
