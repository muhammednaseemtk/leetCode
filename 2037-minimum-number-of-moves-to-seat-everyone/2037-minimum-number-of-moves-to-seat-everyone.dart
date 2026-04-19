class Solution {
  int minMovesToSeat(List<int> seats, List<int> students) {
    seats.sort();
    students.sort();

    int count = 0;
    for(int  i = 0;i < seats.length; i++) {
        count += (seats[i] - students[i]).abs();
    }
    return count;
  }
}