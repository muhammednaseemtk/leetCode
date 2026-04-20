class Solution {
  int maximizeSum(List<int> nums, int k) {
    nums.sort((a, b) => b.compareTo(a));
    int maxElement = nums[0];
    int sum = 0;
    for (int i = 0; i < k; i++) {
      sum += maxElement;
      maxElement++;
    }

    return sum;
  }
}