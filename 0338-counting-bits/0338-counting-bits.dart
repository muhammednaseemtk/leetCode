class Solution {
  List<int> countBits(int n) {
    List<int> result= List.filled(n+1,0);

    for( int i=1; i<=n; i++){
        result[i]= result[i>>1] + (i&1);
    }
    return result;
    
  }
}