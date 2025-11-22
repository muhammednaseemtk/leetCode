class Solution {
  bool detectCapitalUse(String word) {
    if(word.toUpperCase() == word) return true;
    if(word.toLowerCase() == word) return true;
    if(word[0].toUpperCase() == word[0] && word.substring(1).toLowerCase() == word.substring(1)){
        return true;
    }
    return false;
  }
}