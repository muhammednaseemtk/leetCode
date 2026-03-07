class Solution {
  int differenceOfSum(List<int> nums) {
    int element = 0;
    int digit = 0;

    for(int i in nums){
        element += i;
        int n = i;

        while(n > 0) {
            digit += n % 10;
            n ~/= 10;
        }
    }
    return (element - digit).abs();
  }
}