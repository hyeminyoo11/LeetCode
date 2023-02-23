# class Solution:
#     def twoSum(self, numbers: List[int], target: int) -> List[int]:
        
#         res = []
#         j = 1
        
#         for i in range(len(numbers)-1):
#             if target - numbers[i] = numbers[j]:
#                 res.append(i)
#                 res.append(i)
#             else:
#                 j+1

# class Solution:
#     def twoSum(self, nums: List[int], target: int) -> List[int]:
        
#         for i in range(len(nums)-1):
#             for j in range(i+1, len(nums)):
#                 if nums[i] + nums[j] == target:
#                     return ([i+1, j+1])


class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        
        maps = {}
            
        for i, n in enumerate(nums):
            diff = target - n
            if diff in maps:
                return [maps[diff]+1, i+1]
            else:
                maps[n] = i
