class Solution {
  int firstMatchingIndex(String s) {
    int ans=-1;
    for(int i =0;i<=s.length~/2;i++){
        if( s[i]==s[s.length-i-1]){
            ans=i;
            break;
        }
    }
    return ans;
  }
}