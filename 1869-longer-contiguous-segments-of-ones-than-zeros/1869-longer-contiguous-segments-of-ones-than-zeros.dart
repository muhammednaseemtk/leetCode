class Solution {
  bool checkZeroOnes(String s) {
    int one = 0, zero = 0;
    int one1 = 0, zero1 = 0;

    for(var ch in s.split('')) {
        if(ch == '1') {
            one1++;
            zero1 = 0;
            if(one1 > one) one = one1;
        } else {
            zero1++;
            one1 = 0;
            if(zero1 > zero) zero = zero1;
        }
    }
    return one > zero;
  }
}