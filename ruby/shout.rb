#Release 1: Write a simple Module

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
# 
#   def self.yelling_happily(words)
#     words + "***" + " :D"
#   end
# end
# 
# # ///////// driver code //////////// #
# puts Shout.yell_angrily("ugh")
# puts Shout.yelling_happily("yay")

#Release 3: Convert a Standalone Module to a Mixin
module Shout 
  def pitch(loudness)
    puts "#{loudness} is the tone volume used at this sporting event."
  end
end

class Baseball 
  include Shout
end

class Golf
  include Shout
end

#///// DRIVER CODE /////#
baseball = Baseball.new
baseball.pitch("High")

golf = Golf.new 
golf.pitch("Low")


