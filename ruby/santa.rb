class Santas

#Release 0: Bring Santa to Life 
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"  
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

#Release 1: Give Santa Attributes for Christmas
  def initialize(gender, ethnicity, jingle) 
    puts "Initializing Santa instance"
    @name = "Santa Claus"
    @gender = gender 
    @ethnicity = ethnicity
    @jingle = jingle 
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

# Release 2: Change an attribute with a Method
  def celebrate_birthday(age)
    @age = age + 1 
  end


  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking[-1] = reindeer_name
    reindeer_name
  end
  puts "#{@name}'s reindeer list is: #{@reindeer_ranking}"

  def gender(new_gender)
    @gender = new_gender
    @gender
  end
  puts "Your new gender is #{@gender}"

  def age 
    @age
  end

  def ethnicity 
    @ethnicity
  end

end 

#////////DRIVER CODE //////// #
# santas = Santas.new
# santas.speak
# santas.eat_milk_and_cookies("snickerdoodle")
#////////DRIVER CODE //////// #

#////////DRIVER CODE //////// #
# santas = Santas.new("female", "black", 24, "Jingle Bell Rock")

#////////DRIVER CODE //////// #
santas = Santas.new("female", "black", "Jingle Bell")
santas.celebrate_birthday(5)
santas.get_mad_at("Rudolph")
santas.gender("male")
santas.age
santas.ethnicity


