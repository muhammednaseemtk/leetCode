class Solution {
  List<int> sortArrayByParityII(List<int> nums) {
    List<int> even = [];
    List<int> odd = [];

    for (int num in nums) {
      if (num % 2 == 0) {
        even.add(num);
      } else {
        odd.add(num);
      }
    }

    int e = 0, o = 0;

    for (int i = 0; i < nums.length; i++) {
      if (i % 2 == 0) {
        nums[i] = even[e++];
      } else {
        nums[i] = odd[o++];
      }
    }

    return nums;
  }
}