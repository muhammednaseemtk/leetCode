class Solution {
  String reverseWords(String s) {
    return s.split('').reversed.join().split(' ').reversed.join(' ');
  }
}