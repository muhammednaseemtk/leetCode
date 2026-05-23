class Solution {
  List<int> concatWithReverse(List<int> nums) {
    List<int> ans = [];
    ans.addAll(nums);
    ans.addAll(nums.reversed);
    return ans;
  }
}