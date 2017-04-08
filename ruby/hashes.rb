## 5.2 Arrays and Hashes ##

#--- Pseudocode Hash Program for Interior Designer ---# 
#Ask designer if they for client name, age, number of children, decor theme, and what they loathe
#Store responses in variables and convert user format to appropriate type 
#Create a hash with the designer's inputs 
#Print the hash to the screen to ensure everything was captured well 
#Ask the user if they want to update anything using the appropriate key and value tags 
#Use control flow to print the hash if their are no changes and to prompt user for more info if their are changes 
#Print the final hash

#--- Get client info ---#
puts "What is the client's name?"
name = gets.chomp

puts "How old is the client?"
age = gets.chomp.to_i

puts "Number of Children"
children = gets.chomp.to_i

puts "Decor theme:"
decor_theme = gets.chomp

puts "One thing they loathe the most:"
loathe = gets.chomp

#--- put client info into a hash ---#
client_info = {
  name: "#{name}",
  age: age,
  children: children,
  decor_theme: "#{decor_theme}",
  loathe: "#{loathe}"
}

puts "Here is #{name}'s information:"
p client_info

#--- allow the client to update their info ---#

puts "Do you want to update this information? (yes/no)"
update_info = gets.chomp 
  if update_info == "no"
    puts "Great you're all set!"
  else
    puts "What do you want to update (enter symbol name)?"
    key_to_update = gets.chomp.to_sym
    
    puts "What should #{key_to_update}'s new value be?"
    new_key_value = gets.chomp 
    client_info[key_to_update] = new_key_value
  end

puts "Here is a final list of #{name}'s information:"
p client_info