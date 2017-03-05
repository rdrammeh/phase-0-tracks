#Release 1: Write a simple Module

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "***" + " :D"
  end
end

# ///////// driver code //////////// #
puts Shout.yell_angrily("ugh")
puts Shout.yelling_happily("yay")
