class Solution {
  int balancedStringSplit(String s) {
    int balance = 0;
    int count = 0;
    s.split('').forEach((val) {
        if (val == 'R') {
            balance++;
        } else {
            balance--;
        }
        if (balance == 0) {
            count++;
        }
    });
    return count;
  }
}