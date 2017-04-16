##-- RELEASE 0: BRING SANTA TO LIFE --#


#-- RELEASE 1: GIVE SANTA ATTRIBUTES FOR CHRISTMAS --#  
  def initialize(gender, ethnicity, age)
    @age = 0 
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Initializing Santa instance..."
  end
  
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end
#-- RELEASE 2: CHANGE AN ATTRIBUTE WITH A METHOD --#  
  def celebrate_birthday
    @age + 1
  end
  
  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.insert(-1, reindeer_name)
    puts "Santa's new reindeer ranking is:"
    @reindeer_ranking
  end
  
  # def gender=(new_gender)
  #   @gender = new_gender
  # end
  # 
  # def age
  #   @age
  # end
  # 
  # def ethnicity
  #   @ethnicity
  # end
    

end

#-- RELEASE 0 - DRIVER CODE --#
# rakey = Santa.new 
# rakey.speak
# rakey.eat_milk_and_cookies("white chocolate macadamia")


# santas = []
# gender_examples = ["agender", "bigender", "female", "gender fluid", "male", "N/A"]
# ethnicity_examples = ["black", "Latino", "white", "Japanese", "prefer not tsay""mystical creature (unicorn)", "N/A"]
# age_examples = [23, 65, 73, 11, 2, 45]

# gender_examples.length.times do |i|
  # santas << Santa.new(gender_examples[i], ethnicity_examples[i], age_examples[i])
 # puts "This santa identifies as #{gender_examples[i]} and #{ethnicity_examples[i]}. I am #{age_examples[i]} years old"
# end


#testing get mad at method
# rakey = Santa.new("female", "black", 24)
# rakey.get_mad_at("Vixen")

#testing getter methods 
# santas.length.times do |i|
  # puts santas[i].age
  # puts santas[i].ethnicity
# end



  