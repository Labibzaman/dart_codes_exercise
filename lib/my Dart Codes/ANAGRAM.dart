bool isAnagram(String word1, String word2) {
  if (word1.length != word2.length) {
    return false; // If lengths are different, they can't be anagrams
  }

  Map<String, int> letterCount = {};

  for (int i = 0; i < word1.length; i++) {
    String letter = word1[i];
    letterCount[letter] = (letterCount[letter] ?? 0) + 1;
  }

  for (int i = 0; i < word2.length; i++) {
    String letter = word2[i];
    if (letterCount.containsKey(letter)) {

      if (letterCount[letter] == 0) {
        letterCount.remove(letter);
      }
    } else {
      return false; // If a letter is not present in word1, they can't be anagrams
    }
  }

  return letterCount.isEmpty;
}

void main() {
  String word1 = "listen";
  String word2 = "silent";
  String word3 = "hello";

  bool areWord1AndWord2Anagrams = isAnagram(word1, word2);
  bool areWord1AndWord3Anagrams = isAnagram(word1, word3);

  print("$word1 and $word2 are anagrams: $areWord1AndWord2Anagrams"); // Should print "listen and silent are anagrams: true"
  print("$word1 and $word3 are anagrams: $areWord1AndWord3Anagrams"); // Should print "listen and hello are anagrams: false"
}
