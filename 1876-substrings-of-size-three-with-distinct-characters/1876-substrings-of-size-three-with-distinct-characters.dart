class Solution {
  int countGoodSubstrings(String s) {
    int count = 0;
    for (int i = 0; i < s.length - 2; i++) {
      String s1 = s[i] + s[i + 1] + s[i + 2];
      List<String> s2 = s1.split("");
      if (s1.length == s2.toSet().length) count++;
    }
    return count;
  }
}