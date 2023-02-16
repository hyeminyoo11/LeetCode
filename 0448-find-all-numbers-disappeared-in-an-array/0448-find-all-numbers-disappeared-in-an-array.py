class Solution:
    def findDisappearedNumbers(self, nums: List[int]) -> List[int]:
        
        ran = range(1, len(nums)+1)
        nums1 = set(nums)
        res = []
        
        for n in ran:
            if n in nums1:
                pass
            else:
                res.append(n)
        
        return res