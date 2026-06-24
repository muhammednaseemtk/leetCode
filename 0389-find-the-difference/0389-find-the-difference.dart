class Solution {
  String findTheDifference(String s, String t) {
  List<String> splitS = s.split('')..sort();
  List<String> splitT = t.split('')..sort();
  for(int i = 0; i < splitS.length; i++){
    if(splitS[i] != splitT[i]){
        return splitT[i];
    }
  }
  return splitT.last;
  }
}