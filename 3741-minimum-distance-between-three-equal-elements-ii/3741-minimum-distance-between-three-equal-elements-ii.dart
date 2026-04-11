class Solution {
  int minimumDistance(List<int> nums) {
    Map<int, List<int>> valueToIndices = {};
    for (int i = 0; i < nums.length; i++) {
        valueToIndices.putIfAbsent(nums[i], () => []).add(i);
    }
    int minDistance = -1;
    for (var indices in valueToIndices.values) {
        if (indices.length < 3) continue;
        for (int i = 0; i <= indices.length - 3; i++) {
            int distance = 2 * (indices[i + 2] - indices[i]);
            if (minDistance == -1 || distance < minDistance) {
                minDistance = distance;
            }
        }
    }
    return minDistance;
    }
}