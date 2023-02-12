class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        
        maps = {}
            
        for i, n in enumerate(nums):
            diff = target - n
            if diff in maps:
                return [maps[diff], i]
            maps[n] = i
        return