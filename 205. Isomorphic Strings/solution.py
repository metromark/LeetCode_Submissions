class Solution:
    def isIsomorphic(self, s: str, t: str) -> bool:

        i_s = []
        i_t = []
        for i,j in zip(s,t):
            i_s.append(s.index(i))
            i_t.append(t.index(j))
        print(i_s, i_t)
        if(i_s == i_t):
            return True
        else:
            return False

        # count = 1
        # for letter_s, letter_t in zip(s, t):
        #     if(type(letter_s) == str):
        #         s = s.replace(letter_s, str(count))
        #     if(type(letter_t) == str):
        #         t = t.replace(letter_t, str(count))
        #     count = count + 1

        # new_s = [int(x) for x in s]
        # new_t = [-int(x) for x in t]
        # if(sum([abs(sum(x)) for x in zip(new_s, new_t)]) > 0):
        #     return False
        # else:
        #     return True
        # print(combined)
        # for i in combined:
        #     if(any(i)):
        #         print(i)
        # print(new_s, new_t, [sum(x) for x in zip(new_s, new_t)])
        # if (sum([sum(x) for x in zip(new_s, new_t)]) == 0):
        #     return True
        # else: return False