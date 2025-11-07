class Solution {
  bool arrayStringsAreEqual(List<String> word1, List<String> word2) {
    var check1 = word1.join().split("").reversed.join();
    var check2 = word2.join().split("").reversed.join();
    if(check1 == check2){
       return true;
    }else{
       return false;
    }
  }
}