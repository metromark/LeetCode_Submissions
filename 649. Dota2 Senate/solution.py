class Solution:
    def predictPartyVictory(self, senate: str) -> str:
        senate_list = [*senate]

        while len(senate_list) > 1:
            
            land_slide = list(set(senate_list))
            if(len(land_slide) > 1): 
                first_senator = senate_list.pop(0)
                for i in range(len(senate_list)):
                    if senate_list[i] != first_senator:
                        del senate_list[i]
                        senate_list.append(first_senator)
                        break
            else: 
                senate_list = land_slide
        
        return "Radiant" if list(set(senate_list))[0] == "R" else "Dire"