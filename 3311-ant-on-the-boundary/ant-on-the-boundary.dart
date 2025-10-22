class Solution {
  int returnToBoundaryCount(List<int> nums) {
    int nums1 = 0, count = 0;
    for(int n in nums) {
        nums1 += n;
        if(nums1 == 0) {
            count++;
        }
    }
    return count;
  }
}