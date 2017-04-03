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

# def encrypt(str)
# index = 0 
# while index < str.length 
#   str[index] = str[index].next
#   index += 1
# end 
# puts "#{str}"
# end  

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


encrypt("abc") 
encrypt("zed") 
decrypt("bcd") 
decrypt("afe")
decrypt(encrypt("swordfish"))

### Nested Method ###
#This nested method call works because the argument we gave is within the parameters of both the encrypt and decrypt method