class Solution {
  int arraySign(List<int> nums) {
      int sign = 1; 
        for (int n in nums) {
            if (n == 0) {
                return 0; 
            } 
			if (n < 0) {
                sign = -sign; 
            }
        }
        return sign; 

  }
}