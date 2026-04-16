class Solution {
  List<int> relativeSortArray(List<int> arr1, List<int> arr2) {
    List<int> res = [];
    for(int n in arr2) {
        for(int i =0;i<arr1.length;i++) {
            if(n==arr1[i]) {
                res.add(arr1.removeAt(i));
                i--;
            }
        }
    }
    arr1.sort();
    return [...res,...arr1];
  }
}