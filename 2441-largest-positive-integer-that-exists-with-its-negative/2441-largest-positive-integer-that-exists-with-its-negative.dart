class Solution {
  int findMaxK(List<int> nums) {
    nums.sort();
    for(int i=nums.length-1 ; i>=0 ; i--){
        if(nums[i]>0 && nums.contains(-nums[i])){
            return nums[i];  
        }else if(nums[i]<0){
            return -1;
        }
    }
    return -1;
  }
}