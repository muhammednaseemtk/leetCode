class Solution {
  List<int> findDuplicates(List<int> nums) {
    Set<int> a = {};
    List<int> b = [];

    for(int i = 0;i < nums.length;i++) {
        if(a.contains(nums[i])) {
            b.add(nums[i]);
        } else {
            a.add(nums[i]);
        }
    }
    return b;
  }
}