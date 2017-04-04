
=begin
commenting out the release 0 bit of code to focus on subsequent release code.

DEFINE METHODS
#method yields to block in DRIVER section
#debug code to track progress
#pass integers to the block code
=end

# RELEASE 0 #
def status_message
  puts "This is Sea Lions Module 5.3"
  yield("Alex", "Rakey")
end

status_message { |name1, name2| puts "#{name1} and #{name2} are working on this pairing session together!" }
