class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    Map<String, String> pairs = {")": "(", "}": "{", "]": "["};

    for (String char in s.split("")) {
      if (pairs.values.contains(char)) {
        stack.add(char); 
      } else if (pairs.keys.contains(char)) {
        if (stack.isEmpty || stack.last != pairs[char]) {
          return false; 
        }
        stack.removeLast(); 
      }
    }

    return stack.isEmpty;
  }
}