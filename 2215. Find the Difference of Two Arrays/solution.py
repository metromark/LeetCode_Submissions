class Solution:
    def findDifference(self, nums1: List[int], nums2: List[int]) -> List[List[int]]:
        new_set = [set(nums1), set(nums2)]
        intersected = (new_set[0]^new_set[1])
        return [list(intersected&new_set[0]), list(intersected&new_set[1])]
