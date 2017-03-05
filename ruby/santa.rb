class Santas

#Release 3: refactor with attr_reader and attr_accessor
  attr_reader :age, :ethnicity
  attr_accessor :gender, :name

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
    @age = rand(0-140).to_i
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

# Release 2: Change an attribute with a Method
  def celebrate_birthday
    @age = @age + 1 
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking[-1] = reindeer_name
  end
end 



# Release 4: Build Many Santas #
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
jingle = ["Santa Baby", "Jingle Bell", "All I Want for Christmas", "Santa Claus is Coming to Town"]

# //////// DRIVER CODE /////// #
santas = Santas.new(example_genders.sample, example_ethnicities.sample, jingle.sample)
santas.speak
santas.eat_milk_and_cookies("snickerdoodle")
puts "#{santas.name} is #{santas.age} years old and identifies as #{santas.gender} and #{santas.ethnicity}"
santas.celebrate_birthday
puts "#{santas.name}'s updated age is #{santas.age}"
santas.get_mad_at("Dancer")
puts "#{santas.name} moved Dancer to the end of the ranking."
