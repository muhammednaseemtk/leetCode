class Solution {
  bool isSameAfterReversals(int num) {
    var a = int.parse(num.toString().split('').reversed.join());
    var b = int.parse(a.toString().split('').reversed.join());
    return b == num;
  }
}