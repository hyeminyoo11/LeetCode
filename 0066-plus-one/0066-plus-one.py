class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        
        strings = map(str, digits)
        
        joined = ''.join(strings)
        
        integ = int(joined)

        itg = integ + 1
        
        res = [int(res) for res in str(itg)]
        
        return res