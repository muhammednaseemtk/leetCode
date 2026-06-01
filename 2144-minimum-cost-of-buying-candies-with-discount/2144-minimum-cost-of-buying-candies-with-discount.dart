class Solution {
  int minimumCost(List<int> cost) {
    var minimum_cost = 0;
    cost.sort((a, b) => b.compareTo(a));
    for (int i=0; i<cost.length; i++) {
        if (i % 3 != 2) {
            minimum_cost += cost[i];
        }
    }
    return minimum_cost;
  }
}