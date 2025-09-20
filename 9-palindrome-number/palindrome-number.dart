class Solution {
  bool isPalindrome(int x) {
    String name = x.toString();
    String reverse = name.split('').reversed.join('');
    return name == reverse;
  }
}