class Solution {
  int prefixCount(List<String> words, String pref) {
    int count = 0;
    for (var w in words) {
      if (w.startsWith(pref)) count++;
    }
    return count;
  }
}