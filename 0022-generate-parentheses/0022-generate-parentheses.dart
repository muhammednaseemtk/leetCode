class Solution {
  void fun(int open, int close, int n, List<String> ans, String s) {
    if (s.length == 2 * n) {
      ans.add(s);
      return;
    }

    if (open > 0) {
      fun(open - 1, close, n, ans, s + "(");
    }
    if (close > open) {
      fun(open, close - 1, n, ans, s + ")");
    }
  }

  List<String> generateParenthesis(int n) {
    List<String> ans = [];
    fun(n, n, n, ans, "");
    return ans;
  }
}