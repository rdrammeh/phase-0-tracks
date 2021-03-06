# Virus Predictor

# I worked on this challenge Omid Fakiri.
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative pulls in a file within out current directory 
# require reaches out to the ruby path to require a file.
require_relative 'state_data'

class VirusPredictor

 #Initializing class and assigns the 3 instance variables and taking in the 3 parameters.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#works as a runner method by calling two methods 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #creates conditional statements and returns number_of_deaths
  #based on the value of population density.
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    case 
      when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150 && @population_density < 200 then number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100 && @population_density < 150 then number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50 && @population_density < 100 then number_of_deaths = (@population * 0.1).floor
      else 
        number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #creates conditional statements and returns speed of spread
  #based on the value of population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    case 
      when @population_density >= 200 then speed += 0.5
      when @population_density >= 150 && @population_density < 200 then speed += 1
      when @population_density >= 100 && @population_density < 150 then speed += 1.5
      when @population_density >= 50 && @population_density < 100 then speed += 2
      else
        speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# 
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# 
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# 
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, state_info|
  VirusPredictor.new(state, state_info[:population_density], state_info[:population]).virus_effects
end


#=======================================================================
# Reflection Section

=begin
1. What are the differences between the two different hash syntaxes shown in the state_data file?
The difference between the two different hash syntaxes is that one is a string and value pair and the sub-hash is a key value pair. 

2. What does require_relative do? How is it different from require?
Require relative pulls in code from a file that is within the same directory as the file you're currently working on. It's different from require because require reaches out to the ruby path to require a file.

3. What are some ways to iterate through a hash?
You can use .each, .each_key and .each_value. 

4. When refactoring virus_effects, what stood out to you about the variables, if anything?
Those variables were all instance variables meaning that they are readable and writable throughout the class. 

5. What concept did you most solidify in this challenge?
Looking at hashes and understanding how to read their context despite having sub-content. 

=end