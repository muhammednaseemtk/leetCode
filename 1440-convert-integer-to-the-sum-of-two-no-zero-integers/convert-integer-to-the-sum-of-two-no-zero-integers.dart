class Solution {
  List<int> getNoZeroIntegers(int n) {
    for(int a = 1;a < n;a++){
        int b = n - a;
        bool aZero = a.toString().contains('0');
        bool bZero = b.toString().contains('0');
        if(!aZero && !bZero){
            return[a,b];
        }
    }
    return[];
  }
}