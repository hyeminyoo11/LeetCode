class Solution:
    def validMountainArray(self, arr: List[int]) -> bool:
        
        if len(arr) < 3:
            return False
        
        m = max(arr)
        m_ind = arr.index(m)
        
        if m_ind == 0 or m_ind == len(arr)-1:
            return False
        
        for i in range(1, m_ind+1):
            if arr[i] <= arr[i-1]:
                return False
        
        for i in range(m_ind, len(arr)-1):
            if arr[i] <= arr[i+1]:
                return False
        
        return True