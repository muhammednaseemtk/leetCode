class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    Map<int, int> lastIndex = {};
    for(int i = 0;i < nums.length; i++){
        if(lastIndex.containsKey(nums[i])){
            if(i - lastIndex[nums[i]]! <= k){
                return true;
            }
        }
        lastIndex[nums[i]] = i;
    }
    return false;
  }
}