class Solution {
  List<int> smallerNumbersThanCurrent(List<int> nums) {
    List<int> nums1 = [];

    for(int i = 0; i < nums.length;i++) {
        int count = 0;

        for(int j = 0; j < nums.length; j++) {
            if(nums[i] > nums[j]) {
                count++;
            }
        }
        nums1.add(count);
    }
    return nums1;
  }
}