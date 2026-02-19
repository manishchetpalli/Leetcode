class Solution:
    def maxProductDifference(self, nums: List[int]) -> int:
        largest1 = largest2 = 0
        smallest1 = smallest2 = float('inf')
        for num in nums:
            if num > largest1:
                largest2 = largest1
                largest1 = num
            elif num > largest2:
                largest2 = num
            if num < smallest1:
                smallest2 = smallest1
                smallest1 = num
            elif num < smallest2:
                smallest2 = num
        return largest1 * largest2 - smallest1 * smallest2