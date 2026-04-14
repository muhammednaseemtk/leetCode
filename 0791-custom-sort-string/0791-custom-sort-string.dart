class Solution {
  String customSortString(String order, String s) {
    String res = "";
    for(int i = 0; i < order.length; i++){
        while(s.contains(order[i])){
            res += order[i];
            s = s.replaceFirst(order[i],"");
        }
    }
    return res += s;
  }
}