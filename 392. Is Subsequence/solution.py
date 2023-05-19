class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        
        for i in s:
            try:
                #scan the strings and return index of the current character s in t
                cur = t.index(i)
            except:
                return False 

            # update original string to remove the scanned strings
            t = t[cur+1:]
        return True
