class Solution {
  void rotate(List<int> nums, int k) {
    List<int> result = [...nums];

    for(int i = 0; i < nums.length; i++) {
        nums[(i + k) % result.length] = result[i];
    }
  }
}