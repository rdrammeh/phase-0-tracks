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
  
 



  