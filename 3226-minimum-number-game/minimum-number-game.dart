class Solution {
  List<int> numberGame(List<int> nums) {
    List<int> arr = [];
    List<int> num1 = List.from(nums);
    while(num1.isNotEmpty){
        num1.sort();
        int removed = num1.removeAt(0);
        if(num1.isNotEmpty){
            num1.sort();
            int bobRemove = num1.removeAt(0);
            arr.add(bobRemove);
            arr.add(removed);
        }
    }
    return arr;
  }
}