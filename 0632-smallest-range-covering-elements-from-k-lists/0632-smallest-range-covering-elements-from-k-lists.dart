class Solution {
  List<int> smallestRange(List<List<int>> nums) {
    List<List<int>> all = [];
    
    for (int i = 0; i < nums.length; i++) {
      for (int num in nums[i]) {
        all.add([num, i]);
      }
    }
    
    all.sort((a, b) => a[0].compareTo(b[0]));
    
    Map<int, int> count = {};
    int l = 0, r = 0;
    int totalLists = nums.length;
    int uniqueListsInWindow = 0;
    int minRange = all.last[0] - all.first[0];
    List<int> result = [all.first[0], all.last[0]];
    
    while (r < all.length) {
      int currentList = all[r][1];
      count[currentList] = (count[currentList] ?? 0) + 1;
      if (count[currentList] == 1) uniqueListsInWindow++;
      
      while (uniqueListsInWindow == totalLists) {
        int currentRange = all[r][0] - all[l][0];
        if (currentRange < minRange) {
          minRange = currentRange;
          result = [all[l][0], all[r][0]];
        }
        
        int leftList = all[l][1];
        count[leftList] = count[leftList]! - 1;
        if (count[leftList] == 0) uniqueListsInWindow--;
        
        l++;
      }
      
      r++;
    }
    
    return result;
  }
}