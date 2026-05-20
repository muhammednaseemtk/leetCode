class Solution {
  int maximum69Number (int n) {
    int fi = -1, cn=n, i=0;
    while(cn>0){
        if(cn%10==6){
            fi=i;
        }
        cn~/=10;
        i++;
    }
    fi = (fi==-1)?0:pow(10,fi).toInt();
    return n+3*fi;
  }
}