
# A String object in Ruby holds and manipulates a sequence of one or more characters.


# This is a string
"i love life"

# Log the string to the console
puts "What a great day it is"

# This is how we store a string in a variable. Variables are a name referecne to a place in the computers memory
greeting = "Hello how are you?"

# Now log the variable to the console
puts greeting

# Concatenation is a way of joining two or more strings together to create a new string
puts "Hello" + " John"

language = "Spanish"
puts "I also speak " + language


# Another thing to note is that you cant concatenate two different data types
name = "John"
age = 32

# puts name + " is " + age  ==> ERROR
# The way to do this is to convert the integer age to a string. Using the .to_s method converts an integer to a string
puts name + " is " + age.to_s

