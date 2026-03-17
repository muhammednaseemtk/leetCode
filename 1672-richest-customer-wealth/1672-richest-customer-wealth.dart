class Solution {
  int maximumWealth(List<List<int>> accounts) {
    var temp = 0;

    for(final account in accounts) {
        var max = 0;
        for(final bank in account) {
            max += bank;
        }

        if(max > temp) {
            temp = max;
        }
    }
    return temp;
  }
}