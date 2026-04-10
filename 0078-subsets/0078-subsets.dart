class Solution {
  List<List<int>> subsets(List<int> nums) {
    List<List<int>> result = [];
    List<int> current = [];

    void backTrack(int start) {
        result.add(List.from(current));
        for(int i = start; i < nums.length;i++) {
            current.add(nums[i]);
            backTrack(i + 1);
            current.removeLast();
        }
    }
    backTrack(0);
    return result;                                  
  }
}