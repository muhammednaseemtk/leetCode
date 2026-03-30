class Solution {
  List<int> frequencySort(List<int> nums) {
    Map<int, int> map = {};
    for(var num in nums) {
        map[num] = (map[num] ?? 0) + 1;
    }
    nums.sort((a,b) {
        if(map[a] == map[b]) {
            return b - a;
        }
        return map[a]! - map[b]!;
    });
    return nums;
  }
}