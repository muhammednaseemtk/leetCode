class Solution {
  List<int> findWordsContaining(List<String> words, String x) {
   List<int> word = [];

   for(var i = 0;i < words.length;i++) {
    if(words[i].contains(x)) {
        word.add(i);
    }
   }
   return word;
  }
}