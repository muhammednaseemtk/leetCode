class Solution {
  int findFinalValue(List<int> nums, int original) {
    while(nums.contains(original)) original *= 2;
    return original;
  }
}