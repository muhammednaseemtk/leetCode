class Solution {
  int numberOfSteps(int num) {
    int count=0;
    while(num!=0){
     if(num.isOdd){
       num--;
       count++;
     }else {
       num=(num/2).toInt();
       count++;
      }
    }
    return count;
  }
}