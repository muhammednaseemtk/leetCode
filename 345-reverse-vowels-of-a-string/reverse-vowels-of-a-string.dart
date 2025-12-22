class Solution {
  String reverseVowels(String s) {
    Set<String> vowels = {'a','e','i','o','u','A','E','I','O','U'};

    List<String> chars = s.split('');
    List<String> onlyVowels = [];

    for(var char in chars){
        if(vowels.contains(char)){
            onlyVowels.add(char);
        }
    }

    onlyVowels = onlyVowels.reversed.toList();
    int index = 0;

    for(int i = 0;i < chars.length;i++){
        if(vowels.contains(chars[i])){
            chars[i] = onlyVowels[index];
            index++;
        }
    }
    return chars.join('');
  }
}