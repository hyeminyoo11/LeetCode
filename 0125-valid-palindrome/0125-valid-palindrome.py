class Solution:
    def isPalindrome(self, s: str) -> bool:
        

        s1 = ''.join(filter(str.isalnum, s.lower())) 

        reverse = ''
        
        for n in s1:
            reverse = n + reverse

        return reverse == s1