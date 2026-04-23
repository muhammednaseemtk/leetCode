class Solution {
  List<int> minBitwiseArray(List<int> nums) {
    List<int> ans = List.filled(nums.length, -1);
    for (int i = 0; i < nums.length; i++) {
        int num = nums[i];
        int x = -1;
        for (int candidate = 0; candidate <= num; candidate++) {
            if ((candidate | (candidate + 1)) == num) {
                x = candidate;
                break;
            }
        }   
        ans[i] = x;
    }
    return ans;
  }
}