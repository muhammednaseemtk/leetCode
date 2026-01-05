class Solution {
  List<List<int>> flipAndInvertImage(List<List<int>> image) {
    for (int i = 0; i < image.length; i++) {
      image[i] = image[i].reversed.toList();
      for (int j = 0; j < image[i].length; j++) {
        if (image[i][j] == 0) {
          image[i][j] = 1;
        } else {
          image[i][j] = 0;
        }
      }
    }
    return image;
  }
}
