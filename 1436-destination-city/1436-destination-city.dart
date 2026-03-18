class Solution {
  String destCity(List<List<String>> paths) {
    Set<String> visit = {};
    Set<String> city = {};

    paths.forEach((path) {
        visit.addAll(path);
        city.add(path.first);
    });
    return visit.difference(city).first;
  }
}