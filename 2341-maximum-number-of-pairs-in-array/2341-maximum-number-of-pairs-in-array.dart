class Solution {
  List<int> numberOfPairs(List<int> nums) {
    Map<int, int> count = {};
    for (int item in nums) {
      count[item] = (count[item] ?? 0) + 1;
    }

    var pair = 0;
    var left = 0;
    for (int value in count.values) {
      pair += value ~/ 2;
      left += value % 2;
    }

    return [pair, left];
  }
}