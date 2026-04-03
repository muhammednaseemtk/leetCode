class Solution {
  List<String> sortPeople(List<String> names, List<int> heights) {
    List<int> indices = List.generate(names.length, (i) => i);

    indices.sort((a, b) => heights[b].compareTo(heights[a]));

    return indices.map((i) => names[i]).toList();
  }
}