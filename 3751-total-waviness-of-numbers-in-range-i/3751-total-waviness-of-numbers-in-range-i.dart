class Solution {
  int totalWaviness(int num1, int num2) {
    int total = 0;

    for (int num = num1; num <= num2; num++) {
      String s = num.toString();

      for (int i = 1; i < s.length - 1; i++) {
        int left = int.parse(s[i - 1]);
        int mid = int.parse(s[i]);
        int right = int.parse(s[i + 1]);

        if ((mid > left && mid > right) ||
            (mid < left && mid < right)) {
          total++;
        }
      }
    }

    return total;
  }
}