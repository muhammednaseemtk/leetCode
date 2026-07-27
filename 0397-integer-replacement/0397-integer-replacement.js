var integerReplacement = function(n) {
    let count = 0;
    while (n !== 1) {
        if ((n & 1) === 0) {
            n >>>= 1;
        } else {
            if (n === 3 || ((n >> 1) & 1) === 0) {
                n--;
            } else {
                n++;
            }
        }
        count++;
    }
    return count;
};