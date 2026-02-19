class Solution:
    def maxProduct(self, nums: List[int]) -> int:
        max1, max2 =0,0
        for i in nums:
            if i > max1:  # O(1), constant time comparison
                max2 = max1  # O(1), constant time assignment
                max1 = i  # O(1), constant time assignment
            # If the current number is greater than max2 but not max1, update max2
            elif i > max2:  # O(1), constant time comparison
                max2 = i  # O(1), constant time assignment
    
        # Return the product of the two largest numbers
        return (max1-1) * (max2-1)  # 
