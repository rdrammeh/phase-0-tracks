# Build and Encryption Program (Release 2)#

# encrypt #
# Assign the variable index to 0  
# Assign "abc" to the variable str 
# Create a while loop to cycle through the letters in the str
# Set str index so that the next letter in the str returns 
# Increment loop by 1 
# Print str 


def encrypt(str)
index = 0 
while index < str.length
  if str[index] == "z"
    str[index] = "a"
  else 
    str[index] = str[index].next
  end 
  index += 1 
end
puts "#{str}"
return str 
end 

# decrypt #
# Set index to 0 
# Assign a string "bcd" to a variable
# Find the index of the string 
# Subtract the index of that current from 1 
# Print that new string 

def decrypt(str)
alphabet = "abcdefghijklmnopqrstuvwxyz"
index = 0 
while index < str.length
  char = str[index]
  str[index] = alphabet[alphabet.index(char)-1]
  index += 1 
end
puts "#{str}"
return str 
end 