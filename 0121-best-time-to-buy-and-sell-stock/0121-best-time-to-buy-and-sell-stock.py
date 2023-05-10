class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        
        min_price = float('inf')
        max_profit = 0
        
        for n in prices:
            if n < min_price:
                min_price = n
            elif n - min_price > max_profit:
                max_profit = n - min_price
        return max_profit