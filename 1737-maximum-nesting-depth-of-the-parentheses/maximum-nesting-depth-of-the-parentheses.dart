class Solution {
  int maxDepth(String s) {
    int m = 0;
    int n = 0;
    for(int i = 0;i < s.length; i++) {
        n += (s[i] == "(")?1:(s[i]==")")?-1:0;
        if(n > m) m = n;
    }
    return m;
  }
}