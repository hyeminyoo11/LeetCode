class Solution:
    def findFinalValue(self, nums: List[int], original: int) -> int:

        
        # if original not in nums:
        #     return original
        # else:
        #     for n in nums:
        #         if original * 2 == n:
        #             original *= 2
        #     return original * 2

        while original in nums:
            original *= 2
        return original