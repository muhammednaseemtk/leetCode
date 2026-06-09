class Solution {
  int kthSmallest(List<List<int>> matrix, int k) {
    List<int> list = [];
    for(var elem in matrix){
        list.addAll(elem);
    }

    list.sort((a, b) => a.compareTo(b));
    return list[k-1];
  }
}