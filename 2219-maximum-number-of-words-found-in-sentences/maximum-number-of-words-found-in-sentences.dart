class Solution {
  int mostWordsFound(List<String> sentences) {
    int sentenced = 0;
    for(String sentence in sentences){
        int words = sentence.split(' ').length;
        if(words > sentenced) {
            sentenced = words;
        }
    }
    return sentenced;
  }
}