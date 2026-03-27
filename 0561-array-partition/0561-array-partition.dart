class Solution {
  int arrayPairSum(List<int> nums) {
    nums.sort((a, b) => b.compareTo(a));
    int sum = 0;
    for(int i = 0; i < nums.length; i++){
        if(i % 2 != 0){
            sum+= min(nums[i], nums[i-1]);
        }
    }

    return sum;
  }
}