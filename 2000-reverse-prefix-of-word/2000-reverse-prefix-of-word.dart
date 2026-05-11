class Solution {
  String reversePrefix(String word, String ch) {
    int index = word.indexOf(ch);
    if (index == -1) return word;
    String prefix = word.substring(0, index + 1).split('').reversed.join();
    return prefix + word.substring(index + 1);
  }
}