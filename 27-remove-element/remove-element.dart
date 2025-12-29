class Solution {
  int removeElement(List<int> nums, int val) {
   int re = 0;
   for (int i = 0; i < nums.length; i++) {
    if(nums[i] != val) {
        nums[re] = nums[i];
        re++;
    }
   }
   return re;
  }
}