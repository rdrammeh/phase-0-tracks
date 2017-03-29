## Werewolf Inc Interview Form (Release 1) ##

# Processing Multiple Employees (Release 3) #
puts "How many employees are you processing?"
employees = gets.chomp.to_i
  
until employees == 0
  puts "What is your name?"
  name = gets.chomp
  
  puts "How old are you?"
  age = gets.chomp.to_i
  
  puts "What year were you born?"
  year_born = gets.chomp.to_i
  
  puts "Would you like garlic bread at lunch? (yes/no)"
  garlic_bread = gets.chomp 
  
  puts "Want to enroll for health insurance? (yes/no)"
  health_insurance = gets.chomp 
  
# Check for suspicious allergies(release 4) #
allergies = nil 

  puts "Name any allergies one at a time. If none type 'done'"
  allergies = gets.chomp 
    until allergies == "done" || allergies == "sunshine"
      puts "Any more?"
      allergies = gets.chomp
    end
    if allergies == "sunshine"
      allergic_to_sunshine = true
    end
  

## Conditional Statements (Release 2) ## 

# age #
  if 2017 - age == year_born
    puts "Age is equal to year born"
    age = true 
  else 
    puts "Age is NOT equal to year born"
    age = false 
  end

# garlic bread #
  if garlic_bread == "yes"
    puts "Wants garlic bread"
    garlic_bread = true 
  else 
    puts "Does NOT want garlic bread"
    garlic_bread = false
  end 

# health insurance # 
  if health_insurance == "yes"
    puts "Wants health insurance"
    health_insurance = true 
  else
    puts "Does NOT want health insurance"
    health_insurance = false 
  end 

# Interview Results #
  if age == true && (garlic_bread == true || health_insurance == true)
    puts "Probably NOT a vampire"
  elsif age == false && (garlic_bread == false || health_insurance == false)
    puts "Probably a vampire"
  elsif allergic_to_sunshine == true
    puts "Probably a vampire"
  elsif age == false && garlic_bread == false && health_insurance == false
    puts "Almost certainly a vampire"
  elsif name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire"
  else
    puts "Results inconclusive"
  end

employees = employees - 1 
end 

# Plot Twist (release 5) #
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
