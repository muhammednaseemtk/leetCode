class Solution {
  String reversePrefix(String s, int k) {
    String result='';
    for(int i=k-1;i>=0;i--){
        result+=s[i];
    }
    result+=s.substring(k);
    return result;
  }
}