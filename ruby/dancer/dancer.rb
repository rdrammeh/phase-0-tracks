class Dancer 

  attr_reader :name
  attr_reader :card
  attr_accessor :age

  def initialize(name, age)
    @card = []
    @name = name
    @age = age 
  end

  def pirouette
    "*twirls*"
  end

  def bow 
    "*bows*"
  end

  def queue_dance_with(dancer)
    @card << dancer
  end

  def begin_next_dance
    "Now dancing with #{@card.delete_at(0)}."
  end

  def tutu_color
    if @card[0] == "Misty Copeland"
      "Tutu color should be black."
    elsif @card[0] == "Mikhail Baryshnikov"
      "Tutu color should be white."
    else
      "Tutu color should be pink."
    end
  end
        
end

=begin
I decided to create an instance method that assigned the color of the tutu of the dancer next up in the dance queue card. 
=end

