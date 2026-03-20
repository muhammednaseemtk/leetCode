class Solution {
  bool threeConsecutiveOdds(List<int> arr) {

    int count = 0;
    for (int nums in arr) {
        if (nums %2 == 1) {
            count++;
            if (count ==3) {
                return true;
            }
        }
        else {
            count = 0;
        }
    }
    return false;
  }
}