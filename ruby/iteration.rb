
=begin
commenting out the release 0 bit of code to focus on subsequent release code.

DEFINE METHODS
#method yields to block in DRIVER section
#debug code to track progress
#pass integers to the block code
=end

# RELEASE 0 #
def status_message
  puts "This is Sea Lions Module 5.3"
  yield("Alex", "Rakey")
end

status_message { |name1, name2| puts "#{name1} and #{name2} are working on this pairing session together!" }

# RELEASE 1 #
grocery_list = [
  "eggs", 
  "milk", 
  "bread", 
  "cereal", 
  ]
 
car_types = {
  Ford: "Explorer",
  Honda: "Accord",
  Tesla: "S",
  Volkswagon: "Beetle"
 } 

 # Iterating on an array with .each 
puts "Original grocery list:" 
p grocery_list

grocery_list.each do |item|
  puts "We are in need of #{item}."
end

# Iterating on a hash with .each 
puts "Original car list:"
p car_types

car_types.each do |brand, model|
  puts "The #{model} model is a brand of #{brand}."
end

# Iterating on an array with .map
puts "Original grocery list:"
p grocery_list

fake_list = grocery_list.map do |item|
  puts "fake #{item}"
end

# Iterating on an array with .map!
puts "Original grocery list"
p grocery_list

grocery_list.map! do |item|
  grocery_list = "Real #{item}"
  p grocery_list
end