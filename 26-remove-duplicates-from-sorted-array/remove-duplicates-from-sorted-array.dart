class Solution {
  int removeDuplicates(List<int> nums) {
    List<int> list = nums.toSet().toList();
    nums.clear();
    nums.addAll(list);
    return nums.length;
  }
}