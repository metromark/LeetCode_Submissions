# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        cur = dummy = ListNode()
        ptr = cur
        while list1 and list2:
            if list1.val <= list2.val:
                cur.next = ListNode(list1.val)
                list1 = list1.next
            else:
                cur.next = ListNode(list2.val)
                list2 = list2.next
            cur = cur.next
        
        # if there are any nodes left in list1 and list2, append them to the end of the list.
        while list1:
            cur.next = ListNode(list1.val)
            list1 = list1.next
            cur = cur.next
        while list2:
            cur.next = ListNode(list2.val)
            list2 = list2.next
            cur = cur.next
        return ptr.next