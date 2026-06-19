class Solution {
  int largestAltitude(List<int> gain) {
    List<int> prefix = [gain[0]];
    for (int i = 1; i < gain.length; i++) {
      prefix.add(gain[i] + prefix[prefix.length - 1]);
    }

    int ans = 0;
    for (int p in prefix) {
      if (p > ans) {
        ans = p;
      }
    }

    return ans;
  }
}