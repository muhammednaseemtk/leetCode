class Solution {
  int integerReplacement(int n) {
    int count = 0;
    int num = n;
    while (num > 1) {
        if (num % 2 == 0) {
        num ~/= 2;
        } else {
            if (num == 3) {
                num--;
            } else if ((num & 2) == 2) {
                num++;
            } else {
                num--;
            }
        }
        count++;
    }
    return count;
    }
}