class Solution {
  List<int> deckRevealedIncreasing(List<int> deck) {
    List<int> list = [];
    deck.sort();

    for(int i = deck.length - 1;i >= 0;i--) {
        list.insert(0, deck[i]);
        list.insert(1, list.last);
        list.removeLast();
    }
    return list;
  }
}