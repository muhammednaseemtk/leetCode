class Solution {
  bool checkIfPangram(String sentence) {
    Set<String> sentenced = sentence.split('').toSet();
    return sentenced.length == 26;
  }
}