class Solution:
    def twoSumLessThanK(self, nums: List[int], k: int) -> int:
        
        nums.sort()
        
        res = -1
        
        for i in range(len(nums)-1):
            j = i + 1
            while j < len(nums) and nums[i] + nums[j] < k:
                res = max(res, nums[i] + nums[j])
                j += 1
                
        return res