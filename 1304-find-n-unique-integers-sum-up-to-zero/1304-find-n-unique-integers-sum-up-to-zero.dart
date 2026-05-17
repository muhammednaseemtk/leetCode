class Solution {
  List<int> sumZero(int n) {
   int sum = 0;
    List<int> arr =[];
     for(int i=1;i<n;i++){
       arr.add(i);
       sum+=i;
     }
     arr.add(-sum);
     return arr;
  }
 
}