class Solution {
  List<int> sortByBits(List<int> arr) {
    int countBits(int n) {
      int count = 0;
      while (n > 0) {
        count += (n & 1);
        n = n >> 1;
      }
      return count;
    }

    arr.sort((a, b) {
      int bitA = countBits(a);
      int bitB = countBits(b);

      if (bitA == bitB) {
        return a.compareTo(b); 
      }
      return bitA.compareTo(bitB); 
    });

    return arr;
  }
}