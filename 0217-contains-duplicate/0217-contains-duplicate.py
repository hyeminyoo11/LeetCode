class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        
        sortnums = set(nums)
        
        return len(sortnums) != len(nums)