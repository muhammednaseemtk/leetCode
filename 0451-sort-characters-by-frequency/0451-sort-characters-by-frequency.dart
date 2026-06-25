class Solution {
  String frequencySort(String s) {
    String res = '';
    Map value = {};
    for (int i = 0; i <= s.length - 1; i++) {
      if (value[s[i]] == null) {
        value.addAll({s[i]: 1});
      } else {
        value[s[i]] += 1;
      }
    }
    Map newMap = Map.fromEntries(
        value.entries.toList()..sort((e1, e2) => e2.value.compareTo(e1.value)));
    
    newMap.forEach((key, value) { 
      for(int j =1; j<= value;j++){
        res = res + key;
      }
    });
    return res;
  }
}