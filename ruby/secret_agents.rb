# - ask for a password
# - get the password
# - user enters only letters. no numbers or symbols 
# - every letter that a user puts in, the computer will 
#   choose the next corresponding letter in 
#   the alphabet i.e. 'a' --> 'b'

def encrypt(password)
  encrypted_password = ""


   index = 0
  while index < password.length
      if password[index] == "z"
      password[index] = "a"
      encrypted_password = encrypted_password + password[index]
  
    index += 1
    else

    encrypted_password = encrypted_password + password[index].next
    index += 1
    end
  end

   p encrypted_password
end

puts encrypt("abc")
puts encrypt("zed")
puts encrypt("bcd")
puts encrypt("afe")


# - ask for a password 
# - get the password 
# - computer will turn the letters back to go back on. 

def decrypt(password)
  decrypted_password = ""
 index = 0
while index < password.length
    if password[index] == "z"
    password[index] = "a"
    decrypted_password = decrypted_password + password[index]
    

  index += 1
  else
  decrypted_password = decrypted_password + password[index].next
  index += 1
  
  reversed_password = decrypted_password.reverse
  end
end

p reversed_password
end

puts decrypt("bcd")
