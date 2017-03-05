# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take string turn to array 
  # iterate over the array and add to hash 
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash
def create_a_list(items)
  items = items.split
  grocery_list = {} #same as saying hash.new 
  items.each do |item|
    grocery_list[item] = 1
  end 
  puts grocery_list
  grocery_list
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # add item name to the optional quantity to the list 
# output: the list 
def add_item_to_list(list, item, quantity = 1)
  list[item] = quantity 
  list 
end


# Method to remove an item from the list
# input: list and item name
# steps:
  # delete item name from list 
# output: shorter list

def remove_an_item(list, item)
  list.delete(item)
  list
end


# Method to update the quantity of an item
# input: list, item name, optional quantity 
# steps:
  # reset the item's quantity 
# output: updated hash 

def update_item_quantity(list, item, quantity)
  list[item] = quantity
  list
end

# Method to print a list and make it look pretty
# input: list 
# steps: 
  # puts list 
# output: n/a

def print_list(list)
  list
end


# ///////// DRIVER CODE ////////////
grocery_list = create_a_list("carrots apples cereal pizza")
puts grocery_list 

grocery_list = add_item_to_list(grocery_list, "Lemonade", 2)
grocery_list = add_item_to_list(grocery_list, "Tomatoes", 3)
grocery_list = add_item_to_list(grocery_list, "Onions", 1)
grocery_list = add_item_to_list(grocery_list, "Ice Cream", 4)
puts grocery_list

grocery_list = remove_an_item(grocery_list, "Lemonade")
puts grocery_list

grocery_list = update_item_quantity(grocery_list, "Ice Cream", 1)
puts grocery_list

puts print_list(grocery_list)

# /////////// REFLECT //////////
# What did you learn about pseudocode from working on this challenge?
# pseudocoding helps you understand what you need to setup your methods 

# What are the tradeoffs of using arrays and hashes for this challenge?
# Using both allows you to setup a consistent, clean structure. 

# What does a method return?
# A method returns a value from the last statement

# What kind of things can you pass into methods as arguments?
# required arguments and arguments with default a value

# How can you pass information between methods?
# By using the same arguments and structuring your drive code to use the most updated information

# What concepts were solidified in this challenge, and what concepts are still confusing?
# how to setup methods based on the information we're looking to return. I still need help with setting up the ruby eyntax


