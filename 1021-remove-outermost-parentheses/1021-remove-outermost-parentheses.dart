class Solution {
  String removeOuterParentheses(String s) {

    int count = 0;

    String output = "";

    for (int i = 0; i < s.length; i++) {

        if (s[i] == '(') count++;

        if (count > 1) output+=s[i];

        if (s[i] == ')') count--;

    }

    return output;
  }

}