# class Solution:
#     def repeatedCharacter(self, s: str) -> str:
        
#         maps = defaultdict(int)
        
#         for n in range(len(s)):
#             maps[n].append(s[n])
            
#             return maps

class Solution:
    def repeatedCharacter(self, s: str) -> str:
        letters = set()
        for char in s:
            if char in letters:
                return char
            else:
                letters.add(char)
