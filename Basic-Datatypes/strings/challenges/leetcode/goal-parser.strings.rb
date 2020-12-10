# You own a Goal Parser that can interpret a string command. 
#The command consists of an alphabet of "G", "()" and/or "(al)" in some order.
# The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". 
#The interpreted strings are then concatenated in the original order.

# https://leetcode.com/problems/goal-parser-interpretation/


# @param {String} command
# @return {String}
def interpret(command)
    output = ""

    #1. Iterate through each character in the string
    #2. If we see G, then add G to the output variable
    #. If we see a ( check if the following index has a ) or al) then store the appropriate character in output
   command.split('').each_with_index { |character, idx|

        if character == "G"
            output += "G"
        elsif character == "("
            if command[idx + 1] == ")"
                output += "o"
            elsif command[idx + 1] == "a" && command[idx + 2] = "l" && command[idx + 3] = ")"
                output += "al"
            end
        end

 }
    return output
end


interpret("G()()()()(al)G")
interpret("(al)G(al)()()G")


# Runtime: 68 ms, faster than 72.00% of Ruby online submissions for Goal Parser Interpretation.
# Memory Usage: 209.8 MB, less than 56.00% of Ruby online submissions for Goal Parser Interpretation.