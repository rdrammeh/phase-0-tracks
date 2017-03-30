# Build and Encryption Program (Release 2)#

# encrypt #
# Assign the variable index to 0  
# Assign "abc" to the variable str 
# Create a while loop to cycle through the letters in the str
# Set str index so that the next letter in the str returns 
# Increment loop by 1 
# Print str 


# index = 0
# str = "abc"
# 
# while index < str.length
#   str[index] = str[index].next
#   index += 1
# end
# 
# p str
# 

# decrypt #
# Set index to 0 
# Assign a string "bcd" to a variable
# Find the index of the string 
# Subtract the index of that current from 1 
# Print that new string 

index = 0
str = "bcd"

while index < str.length
  str[index] = str[index] - 1
  index -= 1
end

p str