
loop do 
  
  # Ask the user for their name
  puts "What is your name?"
  citizen_name = gets.chomp 
    
  def swap_name(name)
    name.downcase.chars.reverse
  end
    
  letters = []
  letters << swap_name("#{citizen_name}")
  
  def next_letter(array)
    vowels = "aeiou"
    alphabet = "bcdfghjklmnpqrstvwxyz"
    index = 0
      while index < array.length 
        array.each do |letter|
          if letter.include?(vowels)
            letter = vowels.index(letter).next!
            p letter
          end
          if letter.include?(alphabet)
            letter = alphabet.index(letter).next!
            p letter
          end
          index += 1
        end
        p array
      end
  end
  
  p next_letter(letters)
    
break if citizen_name == "quit" || citizen_name == ""
end

alias = {}