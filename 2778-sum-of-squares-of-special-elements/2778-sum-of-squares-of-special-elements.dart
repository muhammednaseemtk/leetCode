class Solution {
    int sumOfSquares(List<int> nums) {
      int result = 0;
      for(int i = 0; i < nums.length; i++) {
        if(nums.length % (i + 1) != 0) continue;
        
        result += nums[i] * nums[i];
      }
    
      return result;
    }
}