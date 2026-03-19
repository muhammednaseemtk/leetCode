class Solution {
  List<int> findIntersectionValues(List<int> nums1, List<int> nums2) {
    int nums = 0, nums0 = 0;

    for (int i in nums1) {
      if (nums2.contains(i)) {
        nums++;
      }
    }

    for (int j in nums2) {
      if (nums1.contains(j)) {
        nums0++;
      }
    }

    return [nums, nums0];
  }
}