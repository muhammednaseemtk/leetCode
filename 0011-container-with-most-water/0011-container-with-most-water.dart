class Solution {
  int maxArea(List<int> height) {
    int l = 0;
    int r = height.length - 1;
    int ans = (r - l) * min(height[l], height[r]);
    while (l < r) {
      int area = (r - l) * min(height[l], height[r]);
      ans = max(ans, area);
      if (height[l] < height[r]) {
        l++;
      } else {
        r--;
      }
    }
    return ans;
  }

  int min(int a, int b) {
    return a < b ? a : b;
  }
}