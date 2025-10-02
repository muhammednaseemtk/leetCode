class Solution {
  String firstPalindrome(List<String> words) {
    for(final word in words) {
        if(isPalindrome(word)) {
            return word;
        }
    }
    return '';
  }
  bool isPalindrome(String s) {
    var reverse = s.split('').reversed.join('');
    return s == reverse;
  }
}