class Solution {
  String largestNumber(List<int> nums) {
    List<String> stringList = nums.map((n)=>n.toString()).toList();
    stringList.sort((a,b)=> (b+a).compareTo(a+b));
    return int.tryParse(stringList.join())==0?'0':stringList.join();
  }
}