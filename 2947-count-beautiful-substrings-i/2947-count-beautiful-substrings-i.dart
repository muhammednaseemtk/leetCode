class Solution {
    bool isVowel(String ch) {
    return ch == 'a' ||
           ch == 'e' ||
           ch == 'i' ||
           ch == 'o' ||
           ch == 'u';
  }
  int beautifulSubstrings(String s, int k) {
    int n = s.length;
    int count = 0;

    for(int i = 0;i < n;i++) {
        int vowels = 0;
        int constants = 0;

        for(int j = i;j < n;j++) {
            if(isVowel(s[j])) {
                vowels++;
            } else {
                constants++;
            }

            if(vowels == constants && (vowels * constants) % k == 0) {
                count++;
            }
        }
    }
    return count;
  }
}