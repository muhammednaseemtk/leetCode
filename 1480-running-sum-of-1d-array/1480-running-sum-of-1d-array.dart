class Solution {
  List<int> runningSum(List<int> nums) {
    List<int> num1 = nums;

    if(nums.length > 1) {
        for(int i = 1; i < nums.length; i++) {
            num1[i] = num1[i-1] + nums[i];
        }
    }
    return num1;
  }
}