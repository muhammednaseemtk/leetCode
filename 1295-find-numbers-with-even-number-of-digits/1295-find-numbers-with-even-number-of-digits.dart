class Solution {
  int findNumbers(List<int> nums) {
    int count=0;
      for (int number in nums) {
    int numdigits = number.toString().length;
    if(numdigits.isEven){
        count++;
    }
  }
  return count;
  }
}