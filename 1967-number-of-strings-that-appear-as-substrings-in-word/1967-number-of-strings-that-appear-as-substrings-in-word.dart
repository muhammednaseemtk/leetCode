class Solution {
  int numOfStrings(List<String> patterns, String word) {
    int count = 0;
    for (var p in patterns) {
      if (word.contains(p)) {
        count++;
      }
    }
    return count;
  }
}