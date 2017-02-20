def werewolf_inc_member_form
  puts "How many employees will you be processing?"
  number = gets.chomp

  puts "What is your name?"
  employee_name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  year_born = gets.chomp.to_i
    if year_born + age == 2017  
      puts "Year is equal to age"
      year_born = true  
    else
      puts "Year NOT equal to age"
      year_born = false
    end

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  garlic_bread = gets.chomp
    if garlic_bread == "y"
      puts "Likes garlic bread"
      garlic_bread = true
    else
      puts "Does NOT like garlic bread"
      garlic_bread = false
    end

  puts "Would you like to enroll in the company's health insurance?"
  health_insurance = gets.chomp 
    if health_insurance == "y"
      puts "Wants health insurance"
      health_insurance = true
    else
      puts "Does NOT want health insurance"
      health_insurance = false
    end

  puts "Do you have any allergies (describe)?"
  allergies = gets.chomp
    until allergies == "done"
      puts "What other allergies?"
      allergies = "#{allergies}"
    end
    if allergies == "Sunshine"
      puts "Probably a vampire"
    end
end

year_born = true
garlic_bread = true
health_insurance = true

puts werewolf_inc_member_form
  if year_born && (garlic_bread || health_insurance) 
      puts "Probably NOT a vampire"
  elsif !year_born && !(garlic_bread || health_insurance)
      puts "Probably a vampire"
  elsif !(year_born && garlic_bread && health_insurance)
      puts "Almost certainly a vampire"
  elsif employee_name == "Drake Cula" || "Tu Fang"
      puts "Definitely a vampire"
  else 
      puts "Results inconclusive"
  end

  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."