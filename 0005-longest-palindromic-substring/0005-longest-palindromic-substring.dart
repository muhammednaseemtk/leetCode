class Solution {
  String longestPalindrome(String s) {
    String ans = "";

    for (int i = 0; i < s.length; i++) {
      String p1 = expand(s, i, i);
      String p2 = expand(s, i, i + 1);

      if (p1.length > ans.length) ans = p1;
      if (p2.length > ans.length) ans = p2;
    }

    return ans;
  }

  String expand(String s, int left, int right) {
    while (
        left >= 0 &&
        right < s.length &&
        s[left] == s[right]) {
      left--;
      right++;
    }

    return s.substring(left + 1, right);
  }
}