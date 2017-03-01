
=begin
commenting out the release 0 bit of code to focus on subsequent release code.

#DEFINE METHODS
def power                                            #method yields to block in DRIVER section
  puts "we are now at the beginning of the method".  #debug code to track progress
  yield(2 , 3)                                       #pass integers to the block code
  puts "we are now after the block yeild statement". #debug code
end

#DRIVER CODE
puts "we are about to call the method with our block"  #debug code
power { |base, exponent| puts base**exponent }         # method call, passing in a block
puts
puts "and now we are after the block and method call"   #debug
=end




todo_list = [ "grocery shopping" , "dry cleaning" , "fill car with gas" , "take out trash", "pick up kids from school" ]  

famous_opens = {
  moby_dick: "Call me Ishmael." ,
  tale_of_two_cities: "It was the best of times..." ,
  slaughterhouse_five: "All this happened, more or less." ,
  the_invisible_man: "I am an invisible man."
}


=begin 
#DRIVER CODE

todo_list.map! do |task|
  puts task
  task = task + ".."
end
=end

p famous_opens

h = famous_opens.map do |book, opening_line|
  opening_line = opening_line + "..."
end

p famous_opens
p h