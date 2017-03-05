class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(bark)
    bark.times do puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    puts human_years.to_i * 15 
  end

  def sit
    puts "*sit*"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

# ////////// DRIVER CODE //////////
instance = Puppy.new 
instance.fetch("ball")
instance.speak(3)
instance.roll_over
instance.dog_years(24)
instance.sit
