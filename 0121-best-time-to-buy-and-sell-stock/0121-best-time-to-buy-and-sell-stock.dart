class Solution {
  int maxProfit(List<int> prices) {
    int l = 0;
    int r = 1;
    int res = 0;
    while(r < prices.length){
        int temp = 0;
        if (prices[l] < prices[r]){
            temp = prices[r] - prices[l];
            res = max(temp, res);
        }
        else{
            l = r;
        }
        r += 1;
    }
    return res;
    
  }
}