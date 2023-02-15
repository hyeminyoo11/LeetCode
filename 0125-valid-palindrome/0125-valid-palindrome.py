class Solution:
    def isPalindrome(self, s: str) -> bool:
        

        s1 = ''.join(filter(str.isalnum, s)) 
        s2 = s1.lower()
        reverse = ''
        
        for n in s2:
            reverse = n + reverse

        return reverse == s2