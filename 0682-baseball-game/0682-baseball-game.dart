class Solution {
  int calPoints(List<String> operations) {
    int score = 0;
    List<int> scoreHistory = [];

    for (String op in operations) {
        if (op == 'C') {
            score -= scoreHistory.removeLast();
        } else if (op == 'D') {
            scoreHistory.add(scoreHistory.last * 2);
            score += scoreHistory.last;
        } else if (op == '+') {
            scoreHistory.add(scoreHistory.last + scoreHistory[scoreHistory.length - 2]);
            score += scoreHistory.last;
        } else {
            scoreHistory.add(int.parse(op));
            score += scoreHistory.last;
        }
    }

    return score;
  }
}