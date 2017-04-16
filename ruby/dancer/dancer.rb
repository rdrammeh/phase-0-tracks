class Dancer 
  attr_reader :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age 
  end

  def pirouette
    "*twirls*"
  end

  def bow 
    "*bows*"
  end
end
