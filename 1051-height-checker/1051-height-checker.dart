class Solution {
  int heightChecker(List<int> heights) {
    
    int count = 0;
    List<int> store = heights.toList()..sort();

    for(int i = 0 ; i < heights.length ; i++){
        if(heights[i] == store[i]){
            continue;
        }else{
            count++;
        }
    }
    return count;
  }
}