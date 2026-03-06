class Solution {
  int countDigits(int num) {
    String s = num.toString();
    int count = 0;

    for(int i = 0; i < s.split('').length; i++) {
        if(num % int.parse(s[i]) == 0) {
            count++;
        }
    }
    return count;
  }
}