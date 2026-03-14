class Solution {
  int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
    int count = 0;

    for(int i = 0; i < hours.length;i++) {
        if(hours[i] >= target) {
            count += 1;
        }
    }
    return count;
  }
}