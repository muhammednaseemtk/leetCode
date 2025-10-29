class Solution {
  int findGCD(List<int> nums) {
    int n = 0;
    nums.sort();
    for(int i = 1;i <= nums.last; i++){
        if(nums.first % i == 0 && nums.last % i == 0){
            n = i;
        }
    }
    return n;
  }
}