#Ask the user their name, location, age, 
#number of children, decor theme, if they have allergies,
#and what they hate the most 
#Create a loop for the last two 
#Create a hash for the users inputs 
#If the user needs to make changes, allow them to do so!
#Print the hash 


puts "Clients name:"
client_name = gets.chomp 

puts "Location:"
client_location = gets.chomp 

puts "Age:"
age = gets.chomp.to_i 

puts "Number of children:"
children = gets.chomp.to_i

puts "Decor theme:"
theme = gets.chomp 

loop do 
  puts "Name your allergies (if not put 'done'):"
  allergies = gets.chomp 
  break if allergies == 'done'
end

loop do 
  puts "What do you loathe the most (if nothing put 'done'):"
  loathe = gets.chomp 
  break if loathe == 'done'
end

interior_designers = {
  "Name" => "#{client_name}",
  "Location" => "#{client_location}",
  "Age" => "#{age}",
  "Children" => "#{children}",
  "Theme" => "#{theme}",
  "Allergies" => "+=#{allergies}",
  "loathe" => "+=#{loathe}"
}

puts interior_designers





