
/**
 * 
 * #The command consists of an alphabet of "G", "()" and/or "(al)" in some order.
# The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". 
#The interpreted strings are then concatenated in the original order.

# https://leetcode.com/problems/goal-parser-interpretation/

 */


/**
 * @param {string} command
 * @return {string}
 */
var interpret = function(command) {
    let output = '';
    
    for(let i = 0; i < command.length; i++) {
        if(command[i] === "G") {
            output += "G"
        } else if (command[i] === "(") {
                if(command[i+1] === ")") {
                    output += "o"
                } else if(command[i+1] === "a" && command[i+2] === "l" && command[i+3] === ")") {
                    output += "al"
                }
        }
    }
    return output;
};


interpret("G()()()()(al)G")
interpret("(al)G(al)()()G")


/**
 * Runtime: 80 ms, faster than 74.13% of JavaScript online submissions for Goal Parser Interpretation.
Memory Usage: 38.7 MB, less than 29.87% of JavaScript online submissions for Goal Parser Interpretation.

 */