class Solution {
  bool judgeCircle(String moves) {
    int vertical = 0;
    int horizontal=0;

    for(int i=0;i<moves.length;i++)
    {
        if(moves[i] == "U") vertical++;
        else if(moves[i] == "R") horizontal++;
        else if(moves[i] == "D") vertical--;
        else if(moves[i] == "L") horizontal--;
        
        }
        return vertical ==0 && horizontal ==0;
  }
}