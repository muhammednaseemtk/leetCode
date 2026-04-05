class Solution {
  int subsetXORSum(List<int> nums) {
    int sum = 0;
    List<int> result = [];

    for(int i = nums.length - 1; i >= 0; i--) {
        sum += nums[i];
        result.add(nums[i]);

        for(int j = result.length - 2;j >= 0;j--) {
            sum += nums[i]^result[j];
            result.add(nums[i]^result[j]);
        }
    }
    return sum;
  }
}