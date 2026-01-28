class Solution {
  String longestCommonPrefix(List<String> strs) {
    String common = strs.first;
    for(final word in strs) {
        while(!word.startsWith(common)) {
            common = common.substring(0, common.length - 1);
        }
    }
    return common;
  }
}