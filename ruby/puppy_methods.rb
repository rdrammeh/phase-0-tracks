#--- RELEASE 0: INSTANCE METHODS ---#
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
    puts "I am #{human_years.to_i / 15} in dog years."
  end

  def sit
    puts "*sit*"
  end

#--- RELEASE 1: DECLARE AN INITIALIZE METHOD ---#
  def initialize
    puts "Initializing new Puppy instance..."
  end

end

# ////////// DRIVER CODE FOR RELEASE 0 //////////
shiloh = Puppy.new 
shiloh.fetch("ball")
shiloh.speak(3)
shiloh.roll_over
shiloh.dog_years(60)
shiloh.sit

#--- RELEASE 2: WRITE YOUR OWN CLASS ---#

class Personal_Trainers 

  def cardio(name, hours)
    puts "#{name} completed #{hours} hours of cardio this week!"
  end

  def strength(box_jumps)
   puts "I also did #{box_jumps} box jumps!"
  end 

  def initialize 
    puts "Initializing new Exercise instance..."
  end

end

# ////////// DRIVER CODE FOR RELEASE 2 //////////
kimmy = Personal_Trainers.new
kimmy.cardio("Kimmy", 5)
kimmy.strength(100)

trainers = []
  50.times do
    trainers << Personal_Trainers.new
  end

  trainers.each do |workout|
    workout.cardio("Kimmy", 5)
    workout.strength(100)
    puts "____________________"
  end
