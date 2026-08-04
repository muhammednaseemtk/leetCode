var longestPalindrome = function(s) {
    const n = s.length;
    if (n === 0) return "";
    
    let start = 0, maxLength = 1;
    const dp = Array.from({ length: n }, () => Array(n).fill(false));
    
    for (let i = 0; i < n; i++) {
        dp[i][i] = true; // Single chars are palindromes
    }
    
    for (let length = 2; length <= n; length++) {
        for (let i = 0; i <= n - length; i++) {
            const j = i + length - 1;
            if (s[i] === s[j]) {
                if (length === 2) {
                    dp[i][j] = true;
                } else {
                    dp[i][j] = dp[i + 1][j - 1];
                }
                if (dp[i][j] && length > maxLength) {
                    start = i;
                    maxLength = length;
                }
            }
        }
    }
    
    return s.substring(start, start + maxLength);
};