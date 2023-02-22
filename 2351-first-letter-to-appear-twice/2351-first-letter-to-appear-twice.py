class Solution:
    def repeatedCharacter(self, s: str) -> str:
        
        res = []
        
        for char in s:
            if char in res:
                return char
            else:
                res.append(char)
