class Solution:
    def singleNumber(self, nums: List[int]) -> int:

        count = defaultdict(int)
        
        for i in nums:
            count[i] += 1

        for k, v in count.items():
            if v == 1:
                return k