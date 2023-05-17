class Solution:
    def pivotIndex(self, nums: List[int]) -> int:
        for item in range(0,len(nums)):
            left_sum = sum(nums[:item])
            right_sum = sum(nums[item+1:])
            
            if(left_sum == right_sum):
                return item
        return -1