class Solution {
  int numJewelsInStones(String jewels, String stones) {
    int count = 0;

    for(var j in jewels.split('')) {
        for(var s in stones.split('')) {
            if(j == s) {
                count++;
            }
        }
    }
    return count;
  }
}