class Solution {
  int firstUniqChar(String s) {
    final input = s.split('');

    for(final value in input) {
        if(input.indexOf(value) == input.lastIndexOf(value)) {
            return input.indexOf(value);
        }
    }
    return -1;
  }
}