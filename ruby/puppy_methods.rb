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
# ////////// DRIVER CODE //////////

class Exercise 

  def cardio(hours)
    puts "I have to complete #{hours} hours of cardio this week"
  end

  def strength(box_jumps)
    box_jumps.times do puts "box jump!"
    end
    puts "I completed #{box_jumps} box jumps this week!"
  end 

  def initialize 
    puts "Initializing new Exercise instance..."
  end

end

# ////////// DRIVER CODE //////////
instance = Exercise.new
instance.cardio(7)
instance.strength(10)

array = []
  50.times do instance = Exercise.new
    array.push(instance)
  end

  array.each do |workout|
    workout.cardio(7)
    workout.strength(10)
  end
