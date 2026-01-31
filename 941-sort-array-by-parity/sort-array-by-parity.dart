class Solution {
  List<int> sortArrayByParity(List<int> nums) {
    List<int> even = [];
    List<int> odd = [];

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] % 2 == 0) {
        even.add(nums[i]);
      } else {
        odd.add(nums[i]);
      }
    }

    return [...even, ...odd];
  }
}
