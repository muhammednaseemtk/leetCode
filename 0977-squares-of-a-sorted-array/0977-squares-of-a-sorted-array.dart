class Solution {
  List<int> sortedSquares(List<int> nums) {
    List<int> number = nums.map((e) => e * e).toList();

    number.sort();

    return number;
  }
}