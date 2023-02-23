class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        bed = [0] + flowerbed + [0]   
    
        m = 0
        i = 1
        
        while i < len(bed)-1:
            if bed[i-1] == bed[i] == bed[i+1] == 0:
                m += 1
                i += 2
            else:
                i += 1
                
        return n <= m