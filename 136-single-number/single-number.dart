class Solution {
  int singleNumber(List<int> nums) {
    Set<int> set = Set();
    for(int num in nums){
        if(set.contains(num)){
            set.remove(num);
        }else{
            set.add(num);
        }
    }
    return set.first;
  }
}