class Solution {
  int lastStoneWeight(List<int> stones) {
    while (true) {
      stones.sort((a, b) => b.compareTo(a));
      if (stones.length == 1) {
        return stones[0].abs();
      }
      if (stones.isEmpty) {
        return 0;
      }
      
      int first = stones.removeAt(0);
      int second = stones.removeAt(0);
      
      if (first != second) {
        stones.add((first - second).abs());
      }
    }
  }
}