class Solution {
  List<int> arrayRankTransform(List<int> arr) {
     List<int> res = arr.toSet().toList()..sort();
    Map<int, int> temp = {};
    for(int i=0; i<res.length;i++){
        temp[res[i]]=i+1;
    }
  
    return arr.map((val)=>temp[val]!).toList();
    
  }
}