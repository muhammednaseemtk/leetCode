
class Solution {
  List<List<int>> combinationSum(List<int> candidates, int target) {
    List<List<int>> combinations = [];
    backtracker(List<int> currentCombination, int currentIndex, int currentSum) {
      if (target == currentSum) {
        combinations.add(List.of(currentCombination));
        return;
      } else if (target < currentSum) {
        return;
      }

      for (int i = currentIndex; i < candidates.length; i++) {
        currentCombination.add(candidates[i]);
        currentSum += candidates[i];
        backtracker(currentCombination, i, currentSum);
        currentCombination.removeLast();
        currentSum -= candidates[i];
      }
    }

    backtracker([], 0, 0);
    return combinations;
  }
}