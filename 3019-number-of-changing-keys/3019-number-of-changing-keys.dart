class Solution {
  int countKeyChanges(String x) {
    String s = x.toUpperCase();
    int r = 0;
    for(int i=0;i<s.length-1;i++){
        if(s[i]!=s[i+1]) r++;
    }
    return r;
  }
}