class Solution {
  int minimumSum(int num) {
    List<String> digits = num.toString().split('');
    digits.sort();

    int left = 0, right = 0;

    for (int i = 0; i < digits.length; i++) {
      if (i % 2 == 0)
        right = right * 10 + int.parse(digits[i]);
      else
        left = left * 10 + int.parse(digits[i]);
    }

    return left + right;
  }
}