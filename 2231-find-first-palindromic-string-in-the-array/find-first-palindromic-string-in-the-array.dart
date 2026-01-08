class Solution {
  String firstPalindrome(List<String> words) {
    for (String word in words) {
      String reversed = word.split('').reversed.join('');
      
      if (word == reversed) {
        return word; 
      }
    }
    return ""; 
  }
}