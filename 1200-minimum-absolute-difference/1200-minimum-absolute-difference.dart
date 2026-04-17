class Solution {
  List<List<int>> minimumAbsDifference(List<int> a) {
    a.sort();
    int best = 1 << 60;
    List<List<int>> res = [];
    for (int i = 0; i + 1 < a.length; i++) {
      int d = a[i + 1] - a[i];
      if (d < best) {
        best = d;
        res.clear();
      }
      if (d == best) {
        res.add([a[i], a[i + 1]]);
      }
    }
    return res;
  }
}