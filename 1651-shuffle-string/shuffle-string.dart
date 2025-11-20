class Solution {
  String restoreString(String s, List<int> indices) {
    var char = s.split('');
    for(int i = 0; i < s.length;i++){
        char[indices[i]] = s[i];
    }
    return char.join();
  }
}