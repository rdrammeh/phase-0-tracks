#-- RELEASE 1: WRITE A SIMPLE MODULE --#
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
# 
#   def self.yelling_happily(words)
#     words + "*****" + " :D"
#   end
# end
# 
# #-- DRIVER CODE --#

# puts Shout.yell_angrily("Ugh Monday")
# puts Shout.yelling_happily("It's Friday")

#-- RELEASE 3: CONVERT A STANDALON MODULE TO A MIXIN --#
module Shout
  def yelling(words)
    puts "**** #{words} **** !!!!!"
  end
end

class Baseball 
  include Shout
end

class Graduation 
  include Shout
end

#-- DRIVER CODE --#

baseball = Baseball.new
baseball.yelling("Strike him out")

graduation = Graduation.new
graduation.yelling("Congratulations")











































