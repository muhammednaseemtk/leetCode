class Solution {
  bool areOccurrencesEqual(String s) {
    Map<String, int> count = {};

    for(int i = 0; i < s.length; i++) {
        String ch = s[i];

        if(count.containsKey(ch)) {
            count[ch] = count[ch]! + 1;
        } else {
            count[ch] = 1;
        }
    }
    int first = count.values.first;

    for(int value in count.values) {
        if(value != first) {
            return false;
        }
    }
    return true;
  }
}