class Solution {
  String minWindow(String s, String t) {
    if (s.length < t.length) return "";

    Map<String, int> need = {};
    Map<String, int> window = {};

    for (var ch in t.split('')) {
      need[ch] = (need[ch] ?? 0) + 1;
    }

    int have = 0;
    int needCount = need.length;

    int left = 0;
    int minLen = 1 << 30;
    int start = 0;

    for (int right = 0; right < s.length; right++) {
      String ch = s[right];

      window[ch] = (window[ch] ?? 0) + 1;

      if (need.containsKey(ch) &&
          window[ch] == need[ch]) {
        have++;
      }

      while (have == needCount) {
        if (right - left + 1 < minLen) {
          minLen = right - left + 1;
          start = left;
        }

        String leftChar = s[left];
        window[leftChar] = window[leftChar]! - 1;

        if (need.containsKey(leftChar) &&
            window[leftChar]! < need[leftChar]!) {
          have--;
        }

        left++;
      }
    }

    return minLen == (1 << 30)
        ? ""
        : s.substring(start, start + minLen);
  }
}