class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    Set<int> count1 = nums1.toSet();
    Set<int> count2 = nums2.toSet();
    return [count1.difference(count2).toList(),count2.difference(count1).toList()];
  }
}