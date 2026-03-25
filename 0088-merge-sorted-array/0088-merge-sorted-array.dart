class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    nums1.length = m;
    for(int i = 0; i < n;i++) {
        nums1.add(nums2[i]);
    }
    return nums1.sort();
  }
}