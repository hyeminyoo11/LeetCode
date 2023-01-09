class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        n = len(nums)
        max_c = 0
        c = 0

        for i in range(n):
            if nums[i] == 1:
               c += 1
               max_c = max(c,max_c)
            else:
               c = 0 
        return max_c
