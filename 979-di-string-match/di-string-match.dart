class Solution {
  List<int> diStringMatch(String s) {
    int low = 0;
    int high = s.length;
    List<int> result = [];

    for (int i = 0; i < s.length; i++) {
      if (s[i] == 'I') {
        result.add(low++);
      } else {
        result.add(high--);
      }
    }

    result.add(low); 
    return result;
  }
}
