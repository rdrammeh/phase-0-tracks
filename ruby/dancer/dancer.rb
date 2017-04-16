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
  
end
