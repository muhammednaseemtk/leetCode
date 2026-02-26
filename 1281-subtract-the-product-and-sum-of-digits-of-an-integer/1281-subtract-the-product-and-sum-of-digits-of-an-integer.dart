class Solution {
  int subtractProductAndSum(int n) {
    int sum = 0;
    int product = 1;
    String count = n.toString();

    for(int i = 0; i < count.length; i++) {
        sum += int.parse(count[i]);
        product *= int.parse(count[i]);
    }
    return product - sum;
  }
}