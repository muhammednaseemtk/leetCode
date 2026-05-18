class Solution {
  int sumOfUnique(List<int> nums) {
    Map<int, int> countMap = {};
    int sum = 0;
    for (int num in nums) {
      countMap[num] = (countMap[num] ?? 0) + 1;
    }
    for (int num in countMap.keys) {
      if (countMap[num] == 1) {
        sum += num;
      }
    }
    return sum;
  }
}

    
  