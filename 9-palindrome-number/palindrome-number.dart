class Solution {
  bool isPalindrome(int x) {
    String s = x.toString();
    String n = s.split('').reversed.join();
    return s == n;
  }
}