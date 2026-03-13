class Solution {
  bool canAliceWin(List<int> nums) {
    int sum = 0, sum1 = 0;

    for(int num in nums) {
        if(num < 10) {
            sum += num;
        } else {
            sum1 += num;
        }
    }
    return sum != sum1;
  }
}