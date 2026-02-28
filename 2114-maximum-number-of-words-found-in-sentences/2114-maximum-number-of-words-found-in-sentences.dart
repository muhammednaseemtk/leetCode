class Solution {
  int mostWordsFound(List<String> sentences) {
    int count = 0;
    
    for(String sentence in sentences) {
        List<String> words = sentence.split(' ');
        int word = words.length;

        if(word > count) {
            count = word;
        }
    }
    return count;
  }
}